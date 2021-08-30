///@desc check_wall_collision
///@arg xspeed
///@arg yspeed
function check_wall_collision(argument0, argument1) {


	if (argument0==0) or (argument0==TILE_W-1) or (argument1==0) or (argument1==TILE_H-1) {
			return false;
			exit;
	}

	var tileData = global.grid_[# argument0, argument1];	
	return tileData == FLOOR;



}
