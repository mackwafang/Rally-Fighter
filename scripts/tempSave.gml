var dir, file;
dir = "tempData.txt";
file = file_text_open_write(dir);
//Write Score
file_text_write_real(file,score);
file_text_writeln(file);
//Write Distance
file_text_write_real(file,global.totalDistance);
file_text_writeln(file);

for(i = 0; i < instance_number(obj_npc_racer); i++){
    car[i] = instance_find(obj_npc_racer,i);
    file_text_write_real(file,car[i].x)// NPC Racer's X
    file_text_writeln(file);
    file_text_write_real(file,car[i].y)// NPC Racer's Y
    file_text_writeln(file);
    file_text_write_real(file,car[i].carID)// NPC Racer's Car ID
    file_text_writeln(file);
    file_text_write_real(file,car[i].carType)// NPC Racer's Car Type
    file_text_writeln(file);
    file_text_write_real(file,car[i].carR)// NPC Racer's Car Red Color
    file_text_writeln(file);
    file_text_write_real(file,car[i].carG)// NPC Racer's Car Red Color
    file_text_writeln(file);
    file_text_write_real(file,car[i].carB)// NPC Racer's Car Red Color
    file_text_writeln(file);
    file_text_writeln(file);
}
//Write car's original position
file_text_write_real(file,obj_player.x); //Player's x
file_text_writeln(file);
file_text_write_real(file,obj_player.y); //Player's y
file_text_writeln(file);
file_text_close(file);
