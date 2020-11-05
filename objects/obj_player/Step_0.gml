/// @description Insert description here
// You can write your code in this editor


if (!paused && global.isGamePaused) {
	paused = true;
	preActive = phy_active;
	phy_active = false;
	return;
} else if (paused && !global.isGamePaused) {
	paused = false;
	phy_active = preActive;
} else if (global.isGamePaused) {
	return;
}

if (obj_game_manager.win) {
	return;	
}


if (dead) {
	deadFor += 1;
	if (deadFor >= DEAD_BEFORE_RELOAD) {
		room_restart();
	}
	return;	
}

ds_list_clear(collisionList);
groundedCheck = instance_position_list(x, y + 2, obj_abs_jumpable, collisionList, false);

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
	image_xscale = sign(xMoveDir) == 0 ? image_xscale : sign(xMoveDir);
	phy_speed_x *= sign(phy_speed_x) != sign(xSpeed) ? 0 : 1;
	physics_apply_force(x, y, xSpeed * phy_mass * phy_mass * phy_mass * 2, 0);
	if (xMoveDir != 0) {
		sprite_index = tick < 0 ? spr_player_wibbly : spr_player_wobbly;
		framesToTickSwitch--;
		if (framesToTickSwitch <= 0) {
			tick *= -1;
			framesToTickSwitch = FRAMES_TO_SWITCH;
		}
	} else {
		sprite_index = spr_player;
		framesToTickSwitch = FRAMES_TO_SWITCH;
	}
}