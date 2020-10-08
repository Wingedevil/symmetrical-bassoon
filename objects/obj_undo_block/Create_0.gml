/// @description Insert description here
// You can write your code in this editor

undoableEpsilon = 1;

freezeFrames = 10;
freezeFramesLeft = 0;

undoing = 0;
undoingStacks = 0;;

undoXStack = ds_stack_create();
undoYStack = ds_stack_create();
undoRotStack = ds_stack_create();

ds_stack_push(undoXStack, x);
ds_stack_push(undoYStack, y);
ds_stack_push(undoRotStack, image_angle);