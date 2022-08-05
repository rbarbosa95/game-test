
angle += 2;

y = owner.y - dsin((index * 45) + angle) * -10;
image_index = index;
depth = y < owner.y ? 1 : -1;

if (shot) {
	x += 6;
} else {
	x = owner.x - dcos((index * 45) + angle) * -45;
}
