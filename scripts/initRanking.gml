global.rank = 0;
global.srtRank = 0;
/************* Create New list *************/
global.maxRank = instance_number(obj_npc_racer);
for(r = 0; r <= global.maxRank; r++){
    global.rank[r,0] = 0;
    global.rank[r,1] = 0;
    global.srtRank[r,0] = 0;
    global.srtRank[r,1] = 0;
}