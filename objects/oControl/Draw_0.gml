/// @desc

var _xx = room_width / 2;
var _yy = room_height /2;
var _cos = _xx - dcos(point_direction(_xx, _yy, mouse_x, mouse_y)) * -100;
var _sin = _yy - dsin(point_direction(_xx, _yy, mouse_x, mouse_y)) * 100;
draw_circle_color(_xx, _yy, 3, c_red, c_red, 0);
draw_line_color(_xx, _yy, _cos, _sin, c_fuchsia, c_fuchsia);
draw_line_color(_xx, _yy, _cos, _yy, c_fuchsia, c_fuchsia);
draw_line_color(_cos, _sin, _cos, _yy, c_fuchsia, c_fuchsia);
