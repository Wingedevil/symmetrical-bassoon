/// @description Insert description here
// You can write your code in this editor

// constants
SPD_MOVE = 5;
SPD_JUMP = -7;
DEAD_BEFORE_RELOAD = 60;
ENABLE_AIR_STRAFE = true;
FRAMES_TO_SWITCH = 10;
phy_fixed_rotation = true;

paused = false;
grounded = false;
dead = false;
deadFor = 0;
collisionList = ds_list_create();
framesToTickSwitch = FRAMES_TO_SWITCH;
tick = 1;