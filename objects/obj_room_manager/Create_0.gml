/// @description Insert description here
// You can write your code in this editor

x = -10;
y = -10;
depth = -1000;

roomToGoTo = rm_main;
black = true;
transitioning = -1; // -ve for fading, 0 for status quo, +ve for blackening

alpha = 1;

function goto(rm) {
	if (transitioning == 0 && !black) {
		roomToGoTo = rm;
		transitioning = +1;
	}
}