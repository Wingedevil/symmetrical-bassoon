/// @description Insert description here
// You can write your code in this editor

FRAMES_TO_POP = 60;
frames = FRAMES_TO_POP;

function f(x) {
	if (x >= FRAMES_TO_POP) {
		return 1;
	}
	return 1 + sin(x / FRAMES_TO_POP * pi);
}