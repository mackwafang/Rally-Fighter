//clearHighScore()
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
ini_close();
