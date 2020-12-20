public fat32_init

extern sdcard_read_block_DEHL_lazy
extern sdcard_block_buffer
extern sdcard_current_block_address

extern stream_IX_seek_BCDE

extern debug_io_print_character_A
extern debug_io_print_hex_byte_A
extern error

include "stream.inc"

defvars 0 {
	mbr_boot_code   ds.b 446
	mbr_partition_1 ds.b  16
	mbr_partition_2 ds.b  16
	mbr_partition_3 ds.b  16
	mbr_partition_4 ds.b  16
	mbr_magic       ds.b   2
	mbr
}

defvars 0 {
	partition_boot_flag ds.b 1
	partition_chs_begin ds.b 3
	partition_type_code ds.b 1
	partition_chs_end   ds.b 3
	partition_lba_begin ds.b 4
	partition_lba_size  ds.b 4
	partition
}

defvars stream_seekable {
	chain_first_cluster       ds.b 4
	chain_current_cluster     ds.b 4
	chain_lba_current_sector  ds.b 4
	chain_sectors_remaining_in_current_cluster ds.b 1
	chain
}

defvars chain {
	directory
}

defvars chain {
	file
}

defc volumeid_bytes_per_sector      = $00B ; ds.b 2
defc volumeid_sectors_per_cluster   = $00D ; ds.b 1
defc volumeid_reserved_sectors      = $00E ; ds.b 2
defc volumeid_number_of_fats        = $010 ; ds.b 1
defc volumeid_sectors_per_fat       = $024 ; ds.b 4
defc volumeid_rootdir_first_cluster = $02C ; ds.b 4
defc volumeid_signature             = $1FE ; ds.b 2

fat32_init:
	; read master boot record
	LD	DE, 0
	LD	HL, 0
	CALL	sdcard_read_block_DEHL_lazy
	; verify this is a dos mbr
	LD	HL, (sdcard_block_buffer+mbr_magic)
	LD	BC, $AA55
	AND	A, A
	SBC	HL, BC
	CALL	NZ, error
	; verify filesystem type is $0B or $0C (FAT32)
	LD	A, (sdcard_block_buffer+mbr_partition_1+partition_type_code)
	CP	A, $0B
	JR	Z, fat32_init_type_ok
	CP	A, $0C
	CALL	NZ, error
fat32_init_type_ok:
	; read volume id
	LD	HL, (sdcard_block_buffer+mbr_partition_1+partition_lba_begin)
	LD	DE, (sdcard_block_buffer+mbr_partition_1+partition_lba_begin+2)
	CALL	sdcard_read_block_DEHL_lazy
	; check signature
	LD	HL, (sdcard_block_buffer+volumeid_signature)
	LD	BC, $AA55
	AND	A, A
	SBC	HL, BC
	CALL	NZ, error
	; check bytes per sector
	LD	HL, (sdcard_block_buffer+volumeid_bytes_per_sector)
	LD	BC, 512
	AND	A, A
	SBC	HL, BC
	CALL	NZ, error
	; check number of FATs
	LD	A, (sdcard_block_buffer+volumeid_number_of_fats)
	CP	A, 2
	CALL	NZ, error
	; calculate FAT begin LBA
	LD	DE, (sdcard_block_buffer+volumeid_reserved_sectors)
	LD	BC, 0
	LD	HL, (sdcard_current_block_address) ; parition begin LBA
	ADD	HL, DE
	LD	(fat32_fat_begin_lba), HL
	LD	HL, (sdcard_current_block_address+2) ; parition begin LBA
	ADC	HL, BC
	LD	(fat32_fat_begin_lba+2), HL
	; calculate cluster begin LBA
	LD	DE, (sdcard_block_buffer+volumeid_sectors_per_fat)
	LD	BC, (sdcard_block_buffer+volumeid_sectors_per_fat+2)
	SLA	E ; BCDE <- 2*sectors_per_fat
	RL	D
	RL	C
	RL	B
	LD	HL, (fat32_fat_begin_lba)
	ADD	HL, DE
	LD	(fat32_clusters_begin_lba), HL
	LD	HL, (fat32_fat_begin_lba+2)
	ADC	HL, BC
	LD	(fat32_clusters_begin_lba+2), HL
	; determine cluster size
	LD	A, (sdcard_block_buffer+volumeid_sectors_per_cluster)
	LD	(fat32_sectors_per_cluster), A
	; open root directory
	LD	HL, (sdcard_block_buffer+volumeid_rootdir_first_cluster)
	LD	(fat32_rootdir+chain_first_cluster), HL
	LD	HL, (sdcard_block_buffer+volumeid_rootdir_first_cluster+2)
	LD	(fat32_rootdir+chain_first_cluster+2), HL
	LD	IX, fat32_rootdir
	LD	BC, 0
	LD	DE, 0
	CALL	stream_IX_seek_BCDE
	LD	L, (IX+chain_lba_current_sector+0)
	LD	H, (IX+chain_lba_current_sector+1)
	LD	E, (IX+chain_lba_current_sector+2)
	LD	D, (IX+chain_lba_current_sector+3)
	CALL	sdcard_read_block_DEHL_lazy
	RET

fat32_chain_IX_seek_BCDE:
	LD	(IX+stream_position+0), E
	LD	(IX+stream_position+1), D
	LD	(IX+stream_position+2), C
	LD	(IX+stream_position+3), B
	; current cluster <- first cluster
	LD	A, (IX+chain_first_cluster)
	LD	(IX+chain_current_cluster), A
	LD	A, (IX+chain_first_cluster+1)
	LD	(IX+chain_current_cluster+1), A
	LD	A, (IX+chain_first_cluster+2)
	LD	(IX+chain_current_cluster+2), A
	LD	A, (IX+chain_first_cluster+3)
	LD	(IX+chain_current_cluster+3), A
fat32_chain_IX_seek_BCDE_cluster_loop:
	; calculate cluster size in bytes
	LD	A, (fat32_sectors_per_cluster)
	LD	H, A
	XOR	A, A
	LD	L, A
	SLA	H ; AHL <- sectors per cluster * 512
	ADC	A, 0 ; note: carry cleared after this
	; subtract cluster size from seek address
	EX	DE, HL ; BCDE -= AHL
	SBC	HL, DE
	EX	DE, HL
	LD	HL, BC
	LD	C, A
	LD	B, 0
	SBC	HL, BC
	LD	BC, HL
	JR	C, fat32_chain_IX_seek_BCDE_cluster_found
	; look up next cluster in FAT
	PUSH	DE
	PUSH	BC
	LD	A, (IX+chain_current_cluster)
	LD	L, (IX+chain_current_cluster+1)
	LD	H, (IX+chain_current_cluster+2)
	LD	E, (IX+chain_current_cluster+3)
	LD	D, 0
	SLA	A
	RL	L
	RL	H
	RL	E
	RL	D
	LD	BC, (fat32_fat_begin_lba)
	ADD	HL, BC
	EX	DE, HL
	LD	BC, (fat32_fat_begin_lba+2)
	ADC	HL, BC
	EX	DE, HL
	CALL	sdcard_read_block_DEHL_lazy
	LD	L, (IX+chain_current_cluster)
	LD	H, 0
	ADD	HL, HL
	ADD	HL, HL
	LD	BC, sdcard_block_buffer
	ADD	HL, BC
	LD	A, (HL)
	LD	(IX+chain_current_cluster+0), A
	INC	HL
	LD	A, (HL)
	LD	(IX+chain_current_cluster+1), A
	INC	HL
	LD	A, (HL)
	LD	(IX+chain_current_cluster+2), A
	INC	HL
	LD	A, (HL)
	LD	(IX+chain_current_cluster+3), A
	POP	BC
	POP	DE
	; repeat
	JR	fat32_chain_IX_seek_BCDE_cluster_loop
fat32_chain_IX_seek_BCDE_cluster_found:
	; add custer size again to get relative position
	LD	A, (fat32_sectors_per_cluster)
	LD	H, A
	XOR	A, A
	LD	L, A
	SLA	H ; AHL <- sectors per cluster * 512
	ADC	A, 0
	EX	DE, HL ; BCDE += AHL
	ADD	HL, DE
	EX	DE, HL
	LD	HL, BC
	LD	C, A
	LD	B, 0
	ADC	HL, BC
	LD	BC, HL
	; since clusters are max 64kB in size, BC should be 0 now
	LD	A, B
	OR	A, C
	CALL	NZ, error
	; calculate LBA for 1st sector of current cluster
	PUSH	DE
	LD	L, (IX+chain_current_cluster)
	LD	H, (IX+chain_current_cluster+1)
	LD	E, (IX+chain_current_cluster+2)
	LD	D, (IX+chain_current_cluster+3)
	LD	BC, -2 ; DEHL <- cluster number - 2
	ADD	HL, BC
	EX	DE, HL
	LD	BC, $FFFF
	ADC	HL, BC
	EX	DE, HL
	LD	A, fat32_sectors_per_cluster
fat32_chain_IX_seek_BCDE_calc_LBA_mult_loop:
	SRL	A ; DEHL *= sectors per cluster (power of 2)
	JR	Z, fat32_chain_IX_seek_BCDE_calc_LBA_mult_done
	SLA	L
	RL	H
	RL	E
	RL	D
	JR	fat32_chain_IX_seek_BCDE_calc_LBA_mult_loop
fat32_chain_IX_seek_BCDE_calc_LBA_mult_done:
	LD	BC, (fat32_clusters_begin_lba)
	ADD	HL, BC ; DEHL += fat32_clusters_begin_lba
	EX	DE, HL
	LD	BC, (fat32_clusters_begin_lba+2)
	ADC	HL, BC
	EX	DE, HL
	; calculate correct sector within cluster
	POP	BC ; cluster relative byte address
	LD	C, B
	LD	B, 0
	SRL	C ; divided by 512 now
	LD	A, C ; needed later
	ADD	HL, BC
	EX	DE, HL
	LD	C, 0 ; B is already 0
	ADC	HL, BC
	EX	DE, HL
	LD	(IX+chain_lba_current_sector+0), L
	LD	(IX+chain_lba_current_sector+1), H
	LD	(IX+chain_lba_current_sector+2), E
	LD	(IX+chain_lba_current_sector+3), D
	; sectors remaining <- sectors per cluster - sector in current cluster
	LD	B, A ; value saved above
	LD	A, (fat32_sectors_per_cluster)
	SUB	A, B
	LD	(IX+chain_sectors_remaining_in_current_cluster), A
	RET

section objects_mutable
fat32_rootdir:
defw	error	;stream_get_byte_A
defw	error	;stream_put_byte_A
defw	error	;stream_read_block_HL_len_BC
defw	error	;stream_write_block_HL_len_BC
defw	0, 0	;stream_position
defw	-1, -1	;stream_size
defw	fat32_chain_IX_seek_BCDE ;stream_seek_BCDE
defw	0, 0	;chain_first_cluster
defw	0, 0	;chain_current_cluster
defw	0, 0	;chain_lba_current_sector
defb	0	;chain_sectors_remaining_in_current_cluster

section ram_uninitialized
fat32_fat_begin_lba:
defs	4
fat32_clusters_begin_lba:
defs	4
fat32_sectors_per_cluster:
defs	1
