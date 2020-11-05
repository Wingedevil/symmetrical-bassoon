/// @description Insert description here
// You can write your code in this editor

activeMenu = variable_global_exists("levelPage") ? global.levelPage : "0"; 
isInspectingLevel = variable_global_exists("isInspectingLevel") ? global.isInspectingLevel : false;
inspectedLevel = variable_global_exists("inspectedLevel") ? global.inspectedLevel : "rm_main"; 
inspectedRoom = variable_global_exists("inspectedRoom") ? global.inspectedRoom : rm_main;
polaroidSprite = variable_global_exists("inspectedRoom") ? global.polaroidSprite : spr_ui_rectangle;

FRAMES_BEFORE_CHANGE_LEVEL = 90;
frames = FRAMES_BEFORE_CHANGE_LEVEL;

instance_deactivate_layer("Tab_0");
instance_deactivate_layer("Tab_1");
instance_deactivate_layer("Tab_2");
instance_deactivate_layer("Tab_3");
instance_deactivate_layer("Tab_4");
instance_deactivate_layer("Inspector");

if (audio_is_playing(snd_bgm_2)) {
	obj_sound_manager.stopAllSounds();
	obj_sound_manager.playSoundOnLoop(snd_bgm_1);
}