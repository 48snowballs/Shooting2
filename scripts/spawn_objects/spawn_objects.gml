/// @desc spawn_objects
/// @arg object
/// @arg qty
function spawn_objects(argument0, argument1) {
	var object_ = argument0;
	var qty_    = floor(argument1);
	var tempX   = 0;
	var tempY   = 0;
	var playerX_ = oPlayer.x div TILE_W;
	var playerY_ = oPlayer.y div TILE_H;

	for (var i =0; i<qty_; i++) {
		do {
			tempX=irandom_range(2,TILE_W-2);
			tempY=irandom_range(2,TILE_H-2);
		} until (global.grid_[# tempX,tempY]==FLOOR) and (playerX_!=tempX and playerY_!=tempY)
		instance_create_layer(tempX*20,tempY*20,"Instances", object_);
	}



}
