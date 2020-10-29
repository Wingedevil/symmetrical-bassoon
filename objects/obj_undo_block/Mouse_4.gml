/// @description Insert description here
// You can write your code in this editor

if (global.isGamePaused) {
	return;	
}

if(ds_stack_size(undoXStack) < freezeFrames){
	return;
}
obj_game_manager.undoesUsed++;
undoing = 1;
undoingStacks = ds_stack_size(undoXStack);
phy_fixed_rotation = true;
