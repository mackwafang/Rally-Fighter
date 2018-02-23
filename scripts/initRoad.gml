///initRoad()
var roadLength = 100; //Amount of road segment
randomize();
//initialize road
global.road = 0;
for (var i = 0; i < roadLength; i++) { 
    global.road[i] = -1;
}
//number of segment until a change in road lanes
var noChange = 5;

//init the first segment
global.road[0] = 4;
global.roadWidth = getRoadWidth(global.road[0]);
var j = 0;
//procedural generation
while (j++ < roadLength) {
    var n = 0;
    if (noChange-- > 0) {
        //while no change, next segment is the same
        //change road type
        switch(global.road[j-1]) {
            case 0: case 11: case 12: case 14: case 16: case 21: case 22: 
                n = 0;
                break;
            case 1: case 5: case 13:
                n = 1;
                break;
            case 2: case 6: case 15:
                n = 2;
                break;
            case 3: case 7: case 9:
                n = 3;
                break;
            case 4: case 8: case 10:
                n = 4;
                break;
            case 17: case 19:
                n = 17
                break;
            case 18: case 20:
                n = 18
                break;
        }
    }
    else {
        //change road type
        switch(global.roadWidth) {
            case 0:
                n = choose(0,5,6,7,8,19,20);
                break;
            case 1:
                n = choose(1,9,12);
                break;
            case -1:
                n = choose(2,10,11);
                break;
            case 2:
                n = choose(3,13,14);
                break;
            case -2:
                n = choose(4,15,16);
                break;
            case 3:
                n = choose(17,21);
                break;
            case -3:
                n = choose(18,22);
                break;
        }
        noChange = 2;
    }
    global.roadWidth = getRoadWidth(n);
    global.road[j] = n;
}
print(array_length_1d(global.road));
for (var i = 0; i < roadLength; i++) {
    var o = instance_create(roadInitialX,-i*1280,obj_road);
    o.sprite_index = spr_road;
    o.image_index = global.road[i];
}
