image_angle += random(15);

Maybe = instance_nearest(x,y,objectKeeper);
if(Maybe != noone && distance_to_object(Maybe) < 2 )
{
	instance_destroy(Maybe);
	instance_destroy(id);
}