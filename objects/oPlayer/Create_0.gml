player_dir_ = 0;

image_speed =0;
state_  = playerStates.idle;

x_pos = x div TILE_W;
y_pos = y div TILE_H;

x_from = x_pos;
y_from = y_pos;

x_to = x_pos;
y_to = y_pos;

_x=0;
_y=0;

walking_anim_time   = 0;
walking_anim_lenght = .2;

x1_input = 0;
y1_input = 0;

playercenter_x = sprite_width  / 2;
playercenter_y = sprite_height / 2;

oGameController.is_playerDown=false;
