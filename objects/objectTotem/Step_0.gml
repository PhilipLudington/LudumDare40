if(!instance_exists(Target))
{
	var Maybe = instance_nearest(x,y,objectKeeper);
	if(instance_exists(Maybe) && distance_to_object(Maybe) < Range)
	{
		if(!collision_line(x,y,Maybe.x, Maybe.y,objectWall,false,true))
		{
			Target = Maybe;
			
			// We might have fire recently and then aquired a new target
			if(alarm_get(0) < 1)
			{
				alarm_set(0, 1);
			}
		}
	}
}
