public video_vsync_init
public video_vsync_wait

extern error

defc ctc_channel_0 = $E0
defc ctc_channel_1 = $E1
defc ctc_channel_2 = $E2
defc ctc_channel_3 = $E3

video_vsync_init:
	LD	A, video_vsync_ctc_vectors & $FF
	;	Interrupt vector is the same for all channels
	OUT	(ctc_channel_0), A

	;	    Interrupt ON
	;	    |Mode: Counter
	;	    ||Prescaler (N/A)
	;	    |||CLK/TRG Edge: Rising
	;	    ||||Time Trigger (N/A)
	;	    |||||Time Constant Follows
	;	    ||||||Software Reset
	;	    |||||||Control Word
	;	    ||||||||
	LD	A, %11010111
	OUT	(ctc_channel_3), A
	LD	A, 1
	OUT	(ctc_channel_3), A
	RET

video_vsync_wait:
	XOR	A, A
	LD	(video_vsync_status), A
video_vsync_wait_loop:
	HALT
	LD	A, (video_vsync_status)
	AND	A, A
	JR	Z, video_vsync_wait_loop
	RET

video_vsync_interrupt:
	EX	AF, AF'
	LD	A, 1
	LD	(video_vsync_status), A
	EX	AF, AF'
	EI
	RETI

video_vsync_interrupt_invalid0:
	CALL	error
video_vsync_interrupt_invalid1:
	CALL	error
video_vsync_interrupt_invalid2:
	CALL	error

section ram_initialized
video_vsync_status:
defb	0

section interrupt_vectors
align $100
video_vsync_ctc_vectors:
defw	video_vsync_interrupt_invalid0	; channel 0
defw	video_vsync_interrupt_invalid1	; channel 1
defw	video_vsync_interrupt_invalid2	; channel 2
defw	video_vsync_interrupt	; channel 3
