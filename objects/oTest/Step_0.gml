/// @desc

// repeat (array_length(fire)) {
// 	var i = 0;
// 	fire[i].x = (fire[i].xstart + cos(current_time/500) * radius.x) + (8 * i);
// 	fire[i].y = fire[i].ystart + cos(current_time/500) * radius.y;
// 	++i;
// }


// repeat (array_length(fire)) {
// 	var i = 0;
// 	fire[i].depth  = fire[i].y <= y ? depth + 1 : depth - 1;
// 	++i;
// }

// for (var i = 0; array_length(fire) < 10; i++) {
// 	fire[i].x = (16 * i) + fire[i].xstart + cos(current_time/500) * radius.x;
// 	fire[i].y = fire[i].ystart + sin(current_time/500) * radius.y;
// 	fire[i].depth  = fire[i].y <= y ? depth + 1 : depth - 1;
// }


// fire[0].x = fire[0].xstart + cos(current_time/500) * radius.x;
// fire[0].y = fire[0].ystart + sin(current_time/500) * radius.y;
// fire[0].depth  = fire[0].y <= y ? depth + 1 : depth - 1;

// fire[1].x = 16 + (fire[1].xstart + cos(current_time/500) * radius.x);
// fire[1].y = fire[1].ystart + sin(current_time/500) * radius.y;
// fire[1].depth  = fire[1].y <= y ? depth + 1 : depth - 1;

 for (var i = 0; array_length(fire) <= 6; i++) {
 	fire[i] = instance_create_depth(x - dcos(i * 15) * -45, y - dsin(i * 15) * -10, depth - 1, oFire, {
		owner: id,
		index: i,
	});
 }

var _count = instance_number(oFire);

var _fire = instance_find(oFire, _count - 1);

if (keyboard_check_pressed(vk_shift)) {
	with (_fire) {
		shot = true;
	}
}


var _dash = keyboard_check_pressed(vk_space);
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _move = real(_right) - real(_left);



if (_dash && !isDash) {
	isDash = true;
}



	if (isDash) {
		
x += lerp(x, (dash * _move), 1);
	}



var _sprWidth = sprite_width / 2;

x = clamp(x, 0 + _sprWidth, room_width - _sprWidth);

//if (mouse_check_button_pressed(mb_left)) {
//	var _xx = lengthdir_x(x, 45);
//	var _yy = lengthdir_y(y, 45);
//	instance_create_depth(_xx, _yy, depth, oBullet);
//}
