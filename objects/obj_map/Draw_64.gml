draw_set_valign(fa_top);
draw_set_halign(fa_left);

//draw_text(0,0,"grid_X: " + string(grid_x) );
//draw_text(0,20,"grid_y: " + string(grid_y) );
//draw_text(0,40,"movement: " + string(movement) );

/*
for (var yy = 0; yy < ds_grid_height(terrain); yy ++){
	for (var xx = 0; xx < ds_grid_width(terrain); xx ++){
		var draw_x = 100 + (xx * 12);
		var draw_y = (yy * 12);
		if (xx == grid_x && yy == grid_y) draw_set_color(c_green);
		else draw_set_colour(c_white);
		draw_text(draw_x, draw_y, terrain[# xx, yy] );
	}
}