/// @desc

event_inherited();

#macro DASH 10

fire = [];
//number = 1;
isDash = false;
dash = DASH;
value = 50;
ramon = "gamer";
image_speed = 0;

//global.struct_2 = json_stringify(json_parse(global.struct_1))


// fire[0] = instance_create_depth(x, y, depth, oFire);
// fire[1] = instance_create_depth(x, y, depth, oFire);

function Approach (argument0, argument1, argument2) {
	/// Approach(start, end, shift);

/****************************************
 Increments a value by a given shift but 
 never beyond the end value
 ****************************************/

if (argument0 < argument1)
    return min(argument0 + argument2, argument1); 
else
    return max(argument0 - argument2, argument1);
}