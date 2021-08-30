draw_set_color(c_white);
draw_sprite(sprLabel,0,10,5);
draw_sprite(sprLabel,0,view_wport[0]-sprite_get_width(sprLabel)-10,5);
draw_sprite(sprLabel,0,(view_wport[0]*0.5)-sprite_get_width(sprLabel)-10,5);
draw_text(20,10,"TIME: " + string(time_));
draw_text(view_wport[0]-sprite_get_width(sprLabel),10,"BULLETS: " + string(totalBullets_));
draw_text((view_wport[0]*0.5)-sprite_get_width(sprLabel),10,"LEVEL: " + string(totalEnemy_));