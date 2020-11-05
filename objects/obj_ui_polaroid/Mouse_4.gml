/// @description Insert description here
// You can write your code in this editor

if (global.nextLevelFlag) {
	return;	
}

if (!enabled && !loadLevel) {
	return;	
}

if (!loadLevel && obj_selector_manager.isInspectingLevel) {
	return;
}

if (loadLevel) {
	global.levelPage = obj_selector_manager.activeMenu;
	global.isInspectingLevel = obj_selector_manager.isInspectingLevel;
	global.inspectedLevel = obj_selector_manager.inspectedLevel;
	global.inspectedRoom = obj_selector_manager.inspectedRoom;
	global.polaroidSprite = obj_selector_manager.polaroidSprite;
	obj_room_manager.goto(global.inspectedRoom);
} else {
	obj_selector_manager.isInspectingLevel = true;
	obj_selector_manager.inspectedLevel = levelName;
	obj_selector_manager.inspectedRoom = roomName;
	obj_selector_manager.polaroidSprite = levelPreview;
	image_blend = make_colour_rgb(255, 255, 255);
}