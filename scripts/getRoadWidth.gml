///getRoadWidth(roadType)
switch(argument[0]) {
    case 0: case 11: case 12: case 14: case 16: case 21: case 22: 
        return 0;
    case 1: case 5: case 13:
        return 1;
    case 2: case 6: case 15:
        return -1;
    case 3: case 7: case 9:
        return 2;
    case 4: case 8: case 10:
        return -2;
    case 17: case 19:
        return 3;
    case 18: case 20:
        return -3;
}

