terrain = load_csv("lom_landscape_example.csv");

grid_x = 4;
grid_y = 9;

enum e_terrain{
	plains,
	forest,
	downs,
	mountains,
	last,
}

terrain_sprites[0] = -1;
terrain_sprites[1] = spr_forest;
terrain_sprites[2] = spr_downs;
terrain_sprites[3] = spr_mountain;

visual_grid = ds_grid_create(ds_grid_width(terrain), ds_grid_height(terrain) );
ds_grid_copy(visual_grid, terrain);

enum e_compass{
	north,
	east,
	south,
	west,
	last,
}

compass_point = e_compass.north;