/// @description Insert description here
// You can write your code in this editor

phy_speed_x = clamp(phy_speed_x, -10, 10);
phy_speed_y = clamp(phy_speed_y, -10, 10);

if (undoing) {
	phy_speed_x = 0;
	phy_speed_y = 0;
	phy_angular_velocity = 0;
	phy_position_x = ds_stack_pop(undopXStack);
	phy_position_y = ds_stack_pop(undopYStack);
	newX = -ds_stack_pop(undoXStack);
	newY = -ds_stack_pop(undoYStack);
	phy_speed_x = newX;
	phy_speed_y = newY;
	phy_rotation = -ds_stack_pop(undoRotStack);
	undoing = (ds_stack_size(undoXStack) != 1);
	phy_fixed_rotation = (ds_stack_size(undoXStack) != 1);
	if(!undoing){
		freezeFramesLeft = freezeFrames;
	}
	var colorBlend = 255 * (1 - (ds_stack_size(undoXStack) - 1) / undoingStacks);
	image_blend = make_color_rgb(255, colorBlend, colorBlend);
	
	if (place_meeting(x, y - 2, obj_player)) {
		obj_player.phy_position_x += newX;
		obj_player.phy_position_y += newY;
	}
	
	return;
}

if (freezeFramesLeft > 0) {
	phy_position_x = ds_stack_top(undopXStack);
	phy_position_y = ds_stack_top(undopYStack);
	phy_rotation = -ds_stack_top(undoRotStack);
	phy_speed_x = 0;
	phy_speed_y = 0;
	phy_angular_velocity = 0;
	freezeFramesLeft--;
	return;
}

if (abs(ds_stack_top(undopXStack) - x) > undoableEpsilon
	|| abs(ds_stack_top(undopYStack) - y) > undoableEpsilon 
	|| abs(ds_stack_top(undoRotStack) - image_angle) > undoableEpsilon){
	ds_stack_push(undoXStack, phy_speed_x);
	ds_stack_push(undoYStack, phy_speed_y);
	ds_stack_push(undopXStack, x);
	ds_stack_push(undopYStack, y);
	ds_stack_push(undoRotStack, image_angle);
}

