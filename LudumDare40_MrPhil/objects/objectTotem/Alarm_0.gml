/// Shoot
if(instance_exists(Target))
{
	Fireball = instance_create_depth(x,y,1,objectFireball);
	Fireball.speed = 6;
	Fireball.direction = point_direction(x,y,Target.x, Target.y);
	alarm_set(0, FireRate);
}
else
{
	Target = noone;
	alarm_set(0,-1);
}