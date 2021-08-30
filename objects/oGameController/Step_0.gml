if !is_goalOpen and !instance_exists(oEnemy) {
	is_goalOpen=true;
	spawn_objects(oGoal,1);
}

if instance_exists(oPlayer) and time_ <=0 {
	with oPlayer {
		instance_create_layer(x,y,"Instances",oPoof);
		instance_destroy();		
	}
}

if !instance_exists(oPlayer) and !is_playerDown{
	if alarm[1]==-1 alarm[1]=room_speed;	
	is_playerDown = true;
}