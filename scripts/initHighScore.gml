//Score High Score for next play
for(s = 0; s < 11; s++){
    global.highScore[s,0] = 0; //Score
    global.highScore[s,1] = ""; //Name
    global.highScore[s,2] = 0; //Car Type
    global.highScore[s,3] = 0; //Car Color
}
dir = working_directory+"values.ini";
ini_open(dir);
if(!file_exists(dir)){
    for(i = 0; i < 10; i++){
        ini_write_real("Score","HIGHSCORE_"+string(i+1),-1);
        ini_write_string("Score","HIGHSCORE_"+string(i+1)+"_NAME","");
        ini_write_real("Score","HIGHSCORE_"+string(i+1)+"_TYPE",0);
        ini_write_real("Score","HIGHSCORE_"+string(i+1)+"_COLOR",0);
    }
}
else{
    for(i = 0; i < 10; i++){
        global.highScore[i,0] = ini_read_real("Score","HIGHSCORE_"+string(i+1),-1);
        global.highScore[i,1] = ini_read_string("Score","HIGHSCORE_"+string(i+1)+"_NAME","");
        global.highScore[i,2] = ini_read_real("Score","HIGHSCORE_"+string(i+1)+"_TYPE",0);
        global.highScore[i,3] = ini_read_real("Score","HIGHSCORE_"+string(i+1)+"_COLOR",0);
    }
}
ini_close();
