/// @description Insert description here
// You can write your code in this editor

obj_sound_manager.playSoundOnce(snd_sfx_button);
if (text == "Play") {
	obj_room_manager.goto(rm_selector);
} else if (text == "Credits") {
	obj_room_manager.goto(rm_credits);
} else if (text == "Back") {
	obj_room_manager.goto(rm_main);
} else if (text == "Quit") {
	game_end();
}