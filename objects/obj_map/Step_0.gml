if (keyboard_check_pressed(ord("W"))){
	if (grid_y > 5) grid_y --;	
}

if (keyboard_check_pressed(ord("S"))){
	if (grid_y < ds_grid_height(terrain)) grid_y ++;	
}

if (keyboard_check_pressed(ord("A"))){
	if (grid_x > 5) grid_x --;	
	//Turn Left
	//if (compass_point - 1) >= 0 compass_point --;
	//else compass_point = e_compass - 1;
	//scr_update_view_grid();
}

if (keyboard_check_pressed(ord("D"))){
	if (grid_x < ds_grid_width(terrain) - 5) grid_x ++;	
	//if (compass_point + 1) < e_compass.last compass_point ++;
	//else compass_point = 0;
	//scr_update_view_grid();
}

if (keyboard_check_pressed(vk_f5) ) game_restart();