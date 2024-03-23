draw_sprite(spr_background, 0, 0, 0);
/*			   y_dist  
	XXXXXXXXX  3
	 XXXXXXX   2
	  XXXXX    1
	   XXX     0

	3 + (y_dist * 2)
*/

var y_dist = 4;
var y_count = 0;

for (var yy = (grid_y - y_dist); yy < grid_y; yy ++){
	
	var x_count = 0;
	
	for (var xx = (grid_x - (y_dist + 1) ); xx <= (grid_x + (y_dist + 1)); xx ++){
		var scale = 1/y_dist;
		var w = ((sprite_get_width(spr_forest) / 2) * scale);
		var h = 10 * scale;
		var draw_x = w + (x_count * (w * 2));
		var draw_y = 144 + (y_count * h);
		
		if (xx >= 0 && xx < ds_grid_width(visual_grid) && yy >= 0 && yy < ds_grid_height(visual_grid) ){
			var ind = real(visual_grid[# xx, yy]);
			var spr = terrain_sprites[ ind ];
			if (ind > 0) draw_sprite_ext(spr, 0, draw_x, draw_y, scale, scale, 0, c_white, 1);
		}
		
		x_count ++;
	}
	
	y_dist --;
	y_count ++;
}

/*
var y_count = 5;

for (var yy = grid_y - 5; yy <= grid_y; yy ++ ){
	
	var x_count = 0;
	
	for (var xx = grid_x - 2; xx <= grid_x + 2; xx ++){
		
		var scale = 1/y_count;
		var draw_x = (64 + (x_count * 128) * scale);
		var draw_y = (room_height) - 128;

		if (xx >= 0 && xx < ds_grid_width(terrain) && yy >= 0 && yy < ds_grid_height(terrain) ){
			var ind = real(terrain[# xx, yy]);
			var spr = terrain_sprites[ ind ];
			if (ind > 0) draw_sprite_ext(spr, 0, draw_x, draw_y, scale, scale, 0, c_white, 1);
		}
		
		x_count ++;
	}
	
	y_count --;
}
/*
draw_sprite(spr_background, 0, 0, 0);

//fill pl_view based on grid_x, grid_y
var scale = 1;

for (var yy = grid_y - 5; yy <= grid_y; yy ++ ){
	var w = 1;
	
	for (var xx = grid_x - 1; xx <= grid_x + 1; xx ++){
		var spr = terrain[# xx, yy];
		
		var draw_x = (w - 1) * 64;
		var draw_y = 100 + (scale * 10);
		draw_sprite_ext(spr_terrain, spr, draw_x, draw_y, 1/scale, 1/scale, 0, c_white, 1);
		
		w ++;
	}
	scale ++;
}