/// @description Insert description here
// You can write your code in this editor

// become active
if (!active && obj_selector_manager.activeMenu == text) {
	depth -= 20;
	active = true;
}

// become inactive
if (active && obj_selector_manager.activeMenu != text) {
	depth += 20;
	active = false;
}