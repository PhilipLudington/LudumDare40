Maybe = instance_nearest(x,y,objectPlayer);
Range = distance_to_object(Maybe);

if(Maybe != noone && Range < 1)
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