/// @description Spawn new keepers

if(instance_number(objectKeeper) <= instance_number(objectTotem))
{
	var Spawner = instance_nearest(x,y,objectFountain);
	instance_create_depth(Spawner.x,Spawner.y,0,objectKeeper);
}

alarm_set(0,room_speed);
