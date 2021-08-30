x1_input = keyboard_check(vk_right) - keyboard_check(vk_left);
y1_input = keyboard_check(vk_down) - keyboard_check(vk_up);

switch state_ {
	case playerStates.idle:
		if (x1_input!=0 or y1_input !=0){
			x_from = x_pos;
			y_from = y_pos;
			
			var tempX = x_to + x1_input;
			var tempY = y_to + y1_input;
			
			if check_wall_collision(tempX,tempY)	{	
				x_to += x1_input;
				y_to += y1_input;	
			} 
			x_pos = x_to;
			y_pos = y_to;	
			state_ = playerStates.walking;
		}
		if keyboard_check_pressed(vk_space) and oGameController.totalBullets_ > 0
			state_ = playerStates.shooting;
		break;
	case playerStates.walking:
		walking_anim_time += delta_time / 1000000 ;
		var t = walking_anim_time / walking_anim_lenght;
		
		if ( t > 1) {
			walking_anim_time = 0;
			t=1;
			state_ = playerStates.idle;
		}
		
		_x = lerp(x_from, x_pos, t);
		_y = lerp(y_from, y_pos, t);	
		x = _x * TILE_W; 
		y = _y * TILE_H; 
		break;
	
	case playerStates.shooting:
		var inst_ = instance_create_layer(x + playercenter_x,y + playercenter_y,"Instances",oBullet);
		with inst_ {
			bullet_dir_ = other.player_dir_;	
		}
		oGameController.totalBullets_--;
		state_ = playerStates.idle;
		break;
}

player_dir_ = point_direction(x_from,y_from,x_pos,y_pos);
switch player_dir_ {
	case 0:
		image_index=0;
		break;
	case 90:
		image_index=1;
		break;
	case 180:
		image_index=2;
		break;
	case 270:
		image_index=3;
		break;	
}