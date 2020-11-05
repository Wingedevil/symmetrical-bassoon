/// @description Insert description here
// You can write your code in this editor

alpha += transitioning * 0.05;
alpha = clamp(alpha, 0, 1);

if (alpha == 1) {
	black = true;
	cursor_sprite = spr_cursor;
	room_goto(roomToGoTo);
	global.isGamePaused = true;
	transitioning = -1;
} if (transitioning != 0 && alpha == 0) {
	black = false;
	transitioning = 0;
	global.isGamePaused = false;
} else {
	black = false;
}