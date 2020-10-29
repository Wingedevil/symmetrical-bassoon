/// @description Insert description here
// You can write your code in this editor

draw_self();

if (loadLevel) {	
	// TODO: draw level 
	var enabled1 = !is_undefined(ds_map_find_value(global.levelIndex, ds_map_find_value(global.levelPrevIndex, obj_selector_manager.inspectedLevel)));
	var starred1 = false;
	
	if (!is_undefined(ds_map_find_value(global.levelIndex, obj_selector_manager.inspectedLevel))) {
		if (ds_map_find_value(global.levelIndex, obj_selector_manager.inspectedLevel) <= ds_map_find_value(global.levelParIndex, obj_selector_manager.inspectedLevel)) {
			starred1 = true;
		}
	}
	
	if (enabled1) {
		draw_set_font(fmt_text_basic);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text_color(x + sprite_width / 2, y + sprite_height / 2, obj_selector_manager.inspectedLevel + " Preview", c_white, c_white, c_white, c_white, 1);
	}
	
	// draw level star
	if (starred1) {
		draw_sprite_ext(spr_ui_star, 0, x + sprite_width - 50, y + 50, 1 + f(FRAMES_TO_POP - frames), 1 + f(FRAMES_TO_POP - frames), 0, c_white, 1);
	}

	// draw level name
	draw_set_font(fmt_text_basic);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if (enabled1) {
		draw_text_color(x + sprite_width / 2, y + sprite_height - 20, obj_selector_manager.inspectedLevel, c_black, c_black, c_black, c_black, 1);
	} else {
		draw_text_color(x + sprite_width / 2, y + sprite_height - 20, "???", c_black, c_black, c_black, c_black, 1);
	}
	return;
}

// TODO: draw level preview
if (enabled) {
	draw_set_font(fmt_text_basic);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_color(x + sprite_width / 2, y + sprite_height / 2, levelName + " Preview", c_white, c_white, c_white, c_white, 1);
}

// draw level star
if (starred) {
	draw_sprite(spr_ui_star, 0, x + sprite_width - 50, y + 50);
}

// draw level name
draw_set_font(fmt_text_basic);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (enabled) {
	draw_text_color(x + sprite_width / 2, y + sprite_height - 20, levelName, c_black, c_black, c_black, c_black, 1);
} else {
	draw_text_color(x + sprite_width / 2, y + sprite_height - 20, "???", c_black, c_black, c_black, c_black, 1);
}