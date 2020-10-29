/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left)) {
	if (mouse_x == clamp(mouse_x, x, x + sprite_width)
		&& mouse_y == clamp(mouse_y, y, y + sprite_height)) {
		room_goto(roomName);
	}
}