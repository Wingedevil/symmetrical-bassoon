/// @description Insert description here
// You can write your code in this editor

if (enabled) {
	if (mouse_check_button_pressed(mb_left)) {
		obj_room_manager.goto(nextLevel);
	}
}

if (frames > 0) {
	frames--;
	if (frames <= 0) {
		enabled = true;	
	}
}