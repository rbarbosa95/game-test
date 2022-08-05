/// @desc



 instance_create_depth(room_width / 2, room_height / 2, depth - 10, oTest)



dragObject = noone;
xrelative = 0;
yrelative = 0;

startDepth = 0;

with (oDragable) {
    depth = other.startDepth;
    other.startDepth++;
}

shiftDepth = function(topObject, objectType) {
    if (instance_exists(objectType)) {
        if (topObject.depth == 0) {
            exit;
        } else {
            topObject.depth = 0;
            with (objectType) {
                if (id == topObject) {
                    continue;
                } else {
                    depth++;
                }
            }
        }
    }
}