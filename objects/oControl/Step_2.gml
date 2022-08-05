
if (mouse_check_button(mb_left)) {
    if (dragObject != noone) {
        dragObject.x = mouse_x + xrelative;
        dragObject.y = mouse_y + yrelative;
    }
}