var tempX = x div TILE_W
var tempY = y div TILE_H
if instance_exists(oGameController) 
	global.grid_[# tempX,tempY]=WALL;