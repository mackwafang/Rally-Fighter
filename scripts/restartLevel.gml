var dir, file;
dir = "tempData.txt";
file = file_text_open_read(dir);
//Read Score;
score = file_text_read_real(file);
file_text_readln(file);
//Read Distance
global.totalDistance = file_text_read_real(file);
file_text_readln(file);
file_text_read_real(file);
file_text_readln(file);
file_text_read_real(file);
file_text_readln(file);
with(obj_npc_racer) {instance_destroy();}
with(obj_car_explosion) {instance_destroy();}
for(i = 0; i < global.maxRank; i++){
    xx = file_text_read_real(file)// NPC Racer's X
    file_text_readln(file);
    yy = file_text_read_real(file)// NPC Racer's Y
    file_text_readln(file);
    with(instance_create(xx,yy,obj_npc_racer)){
        carID = file_text_read_real(file); // NPC Racer's ID
        file_text_readln(file);
        carType = file_text_read_real(file);
        file_text_readln(file);
        carR = file_text_read_real(file);
        file_text_readln(file);
        carG = file_text_read_real(file);
        file_text_readln(file);
        carB = file_text_read_real(file);
        file_text_readln(file);
        file_text_readln(file);
    }
}
instance_activate_object(obj_player);
obj_player.x = file_text_read_real(file);
file_text_readln(file);
obj_player.y = file_text_read_real(file);
file_text_readln(file);
file_text_close(file);
health = 100;
global.boost = 100;
//obj_player.condition = 50;
global.distance = 0;
global.difficulty = 2.5+(0.1*global.level)
with(obj_car) {instance_destroy();}
with(obj_misc) {instance_destroy();}
with(obj_explosion) {instance_destroy();}
