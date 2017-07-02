///mergeArray(array,left,mid,right)
array = argument0;
var left = argument1;
var mid = argument2;
var right = argument3;

leftRange = mid-left; // Set range for left array
rightRange = right-mid; //Set range for right array

for(i = 0; i < leftRange; i ++){
    //Create new array
    array1[i,0] = array[i+left,0];
    array1[i,1] = array[i+left,1];
}
for(j = 0; j < rightRange; j ++){
    //Create new array
    array2[j,0] = array[j+mid,0];
    array2[j,1] = array[j+mid,1];
}
i = 1;
j = 1;
for(k = left; k < right; k++){
    if (array1[i,0] <= array2[j,0]){ //Compare temp arrays
        global.srtRank[k,0] = array1[i,0];
        global.srtRank[k,1] = array1[i,1];
        i++; //Move to next index
    }
    else{
        global.srtRank[k,0] = array2[j,0];
        global.srtRank[k,1] = array2[j,1];
        j++; //Move to next index
    }
}
