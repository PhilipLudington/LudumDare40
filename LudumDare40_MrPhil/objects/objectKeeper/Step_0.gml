Target = instance_nearest(x, y, objectPlayer);
mp_potential_step(Target.x, Target.y, room_speed / 30, true);

if(distance_to_object(Target) < 5)
{
	room_goto(asset_get_index("roomDeath"));
}

// Am I visible or sensed
NearestTotem = instance_nearest(x, y, objectTotem);
range = min(distance_to_object(Target), distance_to_object(NearestTotem));
if(range > 100)
{
	if(range > 150)
	{
		visible = false;
	}
	else
	{
		visible = true;
		image_index = 0;
	}
}
else
{
	visible = true;
	image_index = 1;
}