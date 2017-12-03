if(!instance_exists(Target))
{
	Target = instance_nearest(x, y, objectPlayer);
}

var RangeToPlayer = 1000;
if(instance_exists(Target))
{
	mp_potential_step(Target.x, Target.y, room_speed / 30, true);

	if(distance_to_point(Target.x, Target.x) < 1)
	{
		Target = noone;
	}

	RangeToPlayer = distance_to_object(Target);
	if( RangeToPlayer < 5)
	{
		room_goto(asset_get_index("roomDeath"));
	}
}

// Am I visible or sensed
var NearestTotem = instance_nearest(x, y, objectTotem);
var Range = min(RangeToPlayer, distance_to_object(NearestTotem));
if(Range > 100)
{
	if(Range > 200)
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