function scr_update_view_grid() {
	//BASED ON COMPASS_POINT, TERRAIN WILL BE COPIED TO visual_grid IN DIFFERENT WAYS

	if (compass_point == e_compass.north){
		ds_grid_copy(visual_grid, terrain)	;
	}


}
