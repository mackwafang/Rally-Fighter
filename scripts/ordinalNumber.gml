///ordinalNumber(int)
val = argument0;
if(!is_real(val)) {show_error("Value is not a valid number.",false);}
ordinal = val mod 10;
switch(ordinal){
    case 0: str = "th";
            break;
    case 1: if(val == 11+(val div 100)*100){
                str = "th"
                break;
            }
            else{
                str = "st"
                break;
            }
            break;
    case 2: if(val == 12+(val div 100)*100){
                str = "th"
                break;
            }
            else{
                str = "nd"
                break;
            }
            break;
    case 3: if(val == 13+(val div 100)*100){
                str = "th"
                break;
            }
            else{
                str = "rd"
                break;
            }
            break;
    default: str = "th";
             break;
}
return string(val)+str;