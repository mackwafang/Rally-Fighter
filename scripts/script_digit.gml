///script_digit(variable,place)
var s;
s = string(argument0);
return string_repeat("0", argument1-string_length(s)) + s;
