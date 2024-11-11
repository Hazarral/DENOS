if(instance_exists(follow)){
	x_to = follow.x;
	y_to = follow.y;
}

x += (x_to - x)/25;
y += (y_to - y)/25;

camera_set_view_pos(view_camera[0], x - cam_hwidth, y - cam_hheight);

x = clamp(x, cam_hwidth, room_width - cam_hwidth);
y = clamp(y, cam_hheight, room_height - cam_hheight);