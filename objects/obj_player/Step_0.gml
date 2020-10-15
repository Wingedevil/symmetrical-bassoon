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

ds_list_clear(collisionList);
groundedCheck = instance_place_list(x, y + 2, obj_abs_jumpable, collisionList, false);

if (groundedCheck == 0) {
	grounded = false;
} else {
	grounded = false;
	for(var i = 0; i < groundedCheck; i++) {
	    var item = ds_list_find_value(collisionList, i);
	    if (item.phy_active) {
	        grounded = true;
			break;
	    }
	}
}

var keyLeft = keyboard_check(ord("A"));
var keyRight = keyboard_check(ord("D"));
var keyJump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);

var xMoveDir = 0;

// update speeds
rightCheck = instance_place(x + 1, y, obj_abs_static);
leftCheck = instance_place(x - 1, y, obj_abs_static);
if (rightCheck == noone || !rightCheck.phy_active) {
	xMoveDir += keyRight; 
}
if (leftCheck == noone || !leftCheck.phy_active) {
	xMoveDir -= keyLeft; 
}

// jumping
if (grounded && keyJump){
	phy_speed_y = SPD_JUMP;
	grounded = false;
}

if (ENABLE_AIR_STRAFE || grounded) {
	var xSpeed = xMoveDir * SPD_MOVE;
	phy_speed_x = xSpeed;
}