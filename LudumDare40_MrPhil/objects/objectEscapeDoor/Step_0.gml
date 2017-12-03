Maybe = instance_nearest(x,y,objectPlayer);
Range = distance_to_object(Maybe);

if(instance_exists(Maybe) && Range < 6)
{
	room_goto(asset_get_index("roomEscape"));
}
else if(Range > 40)
{
	visible = false;
}
else
{
	visible = true;
}