/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("R"))) {
	room_restart();
}

if (dead) {
	deadFor += 1;
	if (deadFor >= DEAD_BEFORE_RELOAD) {
		room_restart();
	}
	return;	
}

groundedCheck = instance_place(x, y + 2, obj_jumpable);
if (groundedCheck == noone || !groundedCheck.phy_active) {
	grounded = false;
} else {
	grounded = true;
}

var keyLeft = keyboard_check(ord("A"));
var keyRight = keyboard_check(ord("D"));
var keyJump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);

var xMoveDir = 0;

// update speeds
rightCheck = instance_place(x + 1, y, obj_jumpable);
leftCheck = instance_place(x - 1, y, obj_jumpable);
if (rightCheck == noone || !rightCheck.phy_active) {
	xMoveDir += keyRight; 
}
if (leftCheck == noone || !leftCheck.phy_active) {
	xMoveDir -= keyLeft; 
}

var xSpeed = xMoveDir * SPD_MOVE;

// jumping
if(grounded && keyJump){
	phy_speed_y = SPD_JUMP;
	grounded = false;
}

if (ENABLE_AIR_STRAFE || grounded) {
	phy_speed_x = xSpeed;
}