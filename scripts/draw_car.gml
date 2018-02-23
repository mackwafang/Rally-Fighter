///draw_car(sprite,index)
sprite = argument0;
type = argument1;
draw_sprite_ext(spr_car_shadow,carShadow,x,y,1,dir,image_angle,white,image_alpha);
draw_sprite_ext(sprite,type,x,y,1,dir,image_angle,carColor,image_alpha);
if(carType != 1) {draw_sprite_ext(spr_car_shine,0,x,y,1,dir,image_angle,white,image_alpha);}
if(boost) {draw_sprite(spr_boost_flame,irandom(1),x+1,y+8);}
