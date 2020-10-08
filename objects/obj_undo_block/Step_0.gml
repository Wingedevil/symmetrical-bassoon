/// @description Insert description here
// You can write your code in this editor

phy_speed_x = clamp(phy_speed_x, -10, 10);
phy_speed_y = clamp(phy_speed_y, -10, 10);

if (undoing) {
	phy_speed_x = 0;
	phy_speed_y = 0;
	phy_angular_velocity = 0;
	oldX = phy_position_x;
	oldY = phy_position_y;
	newX = ds_stack_pop(undoXStack);
	newY = ds_stack_pop(undoYStack);
	phy_position_x = newX;
	phy_position_y = newY;
	phy_rotation = -ds_stack_pop(undoRotStack);
	undoing = (ds_stack_size(undoXStack) != 1);
	phy_fixed_rotation = (ds_stack_size(undoXStack) != 1);
	if(!undoing){
		freezeFramesLeft = freezeFrames;
	}
	var colorBlend = 255 * (1 - (ds_stack_size(undoXStack) - 1) / undoingStacks);
	image_blend = make_color_rgb(255, colorBlend, colorBlend);
	
	if (place_meeting(x, y - 1, obj_player)) {
		obj_player.phy_position_x += newX - oldX;
		obj_player.phy_position_y += newY - oldY;
	}
	
	return;
}

if (freezeFramesLeft > 0) {
	phy_position_x = ds_stack_top(undoXStack);
	phy_position_y = ds_stack_top(undoYStack);
	phy_rotation = -ds_stack_top(undoRotStack);
	phy_speed_x = 0;
	phy_speed_y = 0;
	phy_angular_velocity = 0;
	freezeFramesLeft--;
	return;
}

if(abs(ds_stack_top(undoXStack) - x) > undoableEpsilon
	|| abs(ds_stack_top(undoYStack) - y) > undoableEpsilon 
	|| abs(ds_stack_top(undoRotStack) - image_angle) > undoableEpsilon){
	ds_stack_push(undoXStack, x);
	ds_stack_push(undoYStack, y);
	ds_stack_push(undoRotStack, image_angle);
}

