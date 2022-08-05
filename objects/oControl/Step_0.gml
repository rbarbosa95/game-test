if (mouse_check_button_pressed(mb_left)) {
    with (oDragable) {
        if (!point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
            continue;
        } else if (other.dragObject == noone || other.dragObject.depth > depth) {
            other.xrelative = x - mouse_x;
            other.yrelative = y - mouse_y;
            other.dragObject = id;
        }
    }
    if (dragObject != noone) {
        shiftDepth(dragObject, oDragable);
    }
}

if (mouse_check_button_released(mb_left)) {
    dragObject = noone;
    xrelative = 0;
    yrelative = 0;
}