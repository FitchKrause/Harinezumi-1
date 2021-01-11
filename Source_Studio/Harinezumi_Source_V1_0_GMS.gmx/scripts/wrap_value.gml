/// wrap_value(value, start, end)
 // Loops a value between a starting and end point

    var value;
        value = argument0;
    var start;
        start = argument1;
    var endv;
        endv = argument2;

    value -= floor(value/endv) * endv;
    return max(start, value);
