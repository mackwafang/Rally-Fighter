///searchRank(arrayl, r, check)
array = argument[0];
l = argument[1];
r = argument[2];
check = argument[3];
mid = round((l+r)/2);
if(is_array(array)){
    midValue = array[mid,0];
    print(mid);
    if(check < midValue){
        return searchRank(array,l,mid,check);
    }
    else if(check > midValue){
        return searchRank(array,mid,r,check);
    }
    else{
        return mid;
    }
    return -1;
}
/*for(r = 0; r <= global.maxRank; r ++){
    if(global.srtRank[r,1] == 0){
        global.placement = r;
    }
}
