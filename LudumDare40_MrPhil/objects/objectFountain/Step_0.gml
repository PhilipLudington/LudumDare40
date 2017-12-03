// Am I visible
range = min(distance_to_object(objectPlayer), distance_to_object(objectTotem));
if(range > 100)
{
	visible = false;
}
else
{
	visible = true;
}

if(instance_number(objectKeeper) < instance_number(objectTotem))
{
	instance_create_depth(x,y,0,objectKeeper);
}