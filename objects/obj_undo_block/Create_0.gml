/// @description Insert description here
// You can write your code in this editor

undoableEpsilon = 1;

freezeFrames = 10;
freezeFramesLeft = 0;

paused = false;
undoing = 0;
undoingStacks = 0;

undopXStack = ds_stack_create();
undopYStack = ds_stack_create();
undoXStack = ds_stack_create();
undoYStack = ds_stack_create();
undoRotStack = ds_stack_create();

ds_stack_push(undopXStack, x);
ds_stack_push(undopYStack, y);
ds_stack_push(undoXStack, phy_speed_x);
ds_stack_push(undoYStack, phy_speed_y);
ds_stack_push(undoRotStack, image_angle);