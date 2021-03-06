defc ui_object_type_window = 1
defc ui_object_type_widget = 2

; object
defvars 0 {
	ui_object_type ds.b 1
	ui_object
}

; box
defvars ui_object {
	ui_box_left ds.b 1
	ui_box_top ds.b 1
	ui_box_width ds.b 1
	ui_box_height ds.b 1
	ui_box
}

; window
defvars ui_box {
	ui_window_background_color ds.b 1
	ui_window_background_character ds.b 1
	ui_window_handle_input ds.w 1
	ui_window_handle_vsync ds.w 1
	ui_window_widgets ; variable length
	ui_window
}

; widget
defvars ui_box {
	ui_widget_parent ds.w 1
	ui_widget_draw ds.w 1
	ui_widget
}

; panel
defvars ui_widget {
	ui_panel_background_color ds.b 1
	ui_panel_background_character ds.b 1
	ui_panel
}

; label
defvars ui_widget {
	ui_label_text ds.w 1
	ui_label
}

; listview
defvars ui_widget {
	ui_listview_listing ds.w 1
	ui_listview_top_line ds.w 1
	ui_listview_bottom_line ds.w 1
	ui_listview_line_buffer ; size = width+1
	ui_listview
}

;line_cursor
defvars ui_widget {
	; ui_widget_parent must be listview
	ui_listview_line_cursor_color_xor_bitmask ds.b 1
	ui_listview_line_cursor_current_line ds.w 1
	ui_listview_line_cursor
}

; hotkey_highlight
defvars ui_widget {
	; ui_widget_parent must be label
	ui_hotkey_highlight_color ds.b 1
	ui_hotkey_highlight
}
