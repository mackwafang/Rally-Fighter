///bubbleSort(array,left,right)
array = argument[0];
left = argument[1];
right = argument[2];
for(j = left; j < right; j ++){ //For every element in the list
    for(i = left; i < right; i ++){ // Check every other element
        if(i > 0){
            if(array[i,0] > array[i-1,0]){
                var temp = array[i,0];
                var tempID = array[i,1];
                array[i,0] = array[i-1,0];
                array[i-1,0] = temp;
                
                array[i,1] = array[i-1,1];
                array[i-1,1] = tempID;
            }
        }
    }
}
return array;
