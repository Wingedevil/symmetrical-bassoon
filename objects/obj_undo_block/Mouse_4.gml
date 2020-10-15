/// @description Insert description here
// You can write your code in this editor


if(ds_stack_size(undoXStack) < freezeFrames){
	return;
}
undoing = 1;
undoingStacks = ds_stack_size(undoXStack);
phy_fixed_rotation = true;
