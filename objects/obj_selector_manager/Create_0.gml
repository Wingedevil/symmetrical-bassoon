/// @description Insert description here
// You can write your code in this editor

activeMenu = variable_global_exists("levelPage") ? global.levelPage : "0"; 
isInspectingLevel = variable_global_exists("isInspectingLevel") ? global.isInspectingLevel : false;
inspectedLevel = variable_global_exists("inspectedLevel") ? global.inspectedLevel : "rm_main"; 
inspectedRoom = variable_global_exists("inspectedRoom") ? global.inspectedRoom : rm_main;

FRAMES_BEFORE_CHANGE_LEVEL = 90;
frames = FRAMES_BEFORE_CHANGE_LEVEL;