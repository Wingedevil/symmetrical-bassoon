/// @description Insert description here
// You can write your code in this editor

instance_deactivate_layer("Tab_0");
instance_deactivate_layer("Tab_1");
instance_deactivate_layer("Tab_2");
instance_deactivate_layer("Tab_3");
instance_deactivate_layer("Tab_4");
instance_deactivate_layer("Inspector");

switch(activeMenu) {
case "0":
	instance_activate_layer("Tab_0");
	break;
case "1":
	instance_activate_layer("Tab_1");
	break;
case "2":
	instance_activate_layer("Tab_2");
	break;
case "3":
	instance_activate_layer("Tab_3");
	break;
case "F":
	instance_activate_layer("Tab_4");
	break;
default:
	break;
}

if (isInspectingLevel) {
	instance_activate_layer("Inspector");
}

if (global.nextLevelFlag) {
	frames--;
	if (frames <= 0) {
		isInspectingLevel = false;
		global.nextLevelFlag = false;
	}
}