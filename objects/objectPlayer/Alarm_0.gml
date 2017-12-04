/// @description Spawn new keepers

if(instance_number(objectKeeper) <= instance_number(objectTotem))
{
	var Spawner = instance_nearest(x,y,objectFountain);
	
	if(instance_exists(Spawner))
	{
		instance_create_depth(Spawner.x,Spawner.y,0,objectKeeper);
	}
	else
	{
		show_debug_message("No Spawner to Create Keepers at.");
	}	
}

alarm_set(0,room_speed);
