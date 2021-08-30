with oGameController {
	totalEnemy_++;
	is_goalOpen   = false;
	//time_         = 20
	//totalBullets_ = 20;
	//enemy_destroy_= 0;
	if totalEnemy_>20 {
		room_goto(rmEnding);
		instance_destroy();
		exit;
	}
}
audio_play_sound(sndLevelUp,10,false);	
room_restart();