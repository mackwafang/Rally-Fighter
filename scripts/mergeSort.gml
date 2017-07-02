///mergeSort(array,left,right)
array = argument0;
left = argument1;
right = argument2;
print("Left: "+string(left)+" Right: "+string(right)+" Mid: "+string(floor((left+right)/2)));
if(left < right){
    var mid = floor((left+right)/2);
    mergeSort(array,left,mid);
    mergeSort(array,mid,right);
    mergeArray(array,left,mid,right);
}
