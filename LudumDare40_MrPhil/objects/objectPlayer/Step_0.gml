speed *= .8;

if(keyboard_check(ord("W")) || keyboard_check(ord("I")) || keyboard_check(vk_up))
{
	vspeed = -BaseSpeed;
}

if(keyboard_check(ord("S")) || keyboard_check(ord("K")) || keyboard_check(vk_down))
{
	vspeed = BaseSpeed;
}

if(keyboard_check(ord("D")) || keyboard_check(ord("L")) || keyboard_check(vk_right))
{
	hspeed = BaseSpeed;
}

if(keyboard_check(ord("A")) || keyboard_check(ord("J")) || keyboard_check(vk_left))
{
	hspeed = -BaseSpeed;
}


