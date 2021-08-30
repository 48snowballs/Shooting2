hp_--;
if hp_<=0 {
	oGameController.enemy_destroy_++;
	if oGameController.enemy_destroy_ mod 3 == 0
		spawn_objects(oPotion,1);
	if oGameController.enemy_destroy_ mod 2 == 0
		spawn_objects(oMagazine,1);
		
	instance_create_layer(x,y,"Instances",oPoof);
	instance_destroy();
} else {
	audio_play_sound(sndHit1,10,false);	
}



instance_destroy(other);