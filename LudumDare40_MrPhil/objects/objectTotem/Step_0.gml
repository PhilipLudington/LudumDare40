
if(Target == noone)
{
	Maybe = instance_nearest(x,y,objectKeeper);
	if(distance_to_object(Maybe) < Range)
	{
		Target = Maybe;
		alarm_set(0,  0);
	}
}