speed *= .8;

var New_VSpeed = vspeed;
var New_HSpeed = hspeed;

if(IsCasting)
{
	if(keyboard_check(ord("E")) || keyboard_check(ord("O")) || keyboard_check(vk_control))
	{
		IsCasting = false;
		
		with SpellBook
		{
			visible = false;
		}
	}
}
else
{
	if(keyboard_check(ord("W")) || keyboard_check(ord("I")) || keyboard_check(vk_up))
	{
		New_VSpeed -= BaseSpeed;
	}

	if(keyboard_check(ord("S")) || keyboard_check(ord("K")) || keyboard_check(vk_down))
	{
		New_VSpeed += BaseSpeed;
	}

	if(keyboard_check(ord("D")) || keyboard_check(ord("L")) || keyboard_check(vk_right))
	{
		New_HSpeed += BaseSpeed;
	}

	if(keyboard_check(ord("A")) || keyboard_check(ord("J")) || keyboard_check(vk_left))
	{
		New_HSpeed -= BaseSpeed;
	}

	if(keyboard_check(ord("E")) || keyboard_check(ord("O")) || keyboard_check(vk_control))
	{
		IsCasting = true;
		with SpellBook
		{
			visible = true;
		}
	}
}

New_VSpeed = clamp(New_VSpeed, -BaseSpeed, BaseSpeed);
New_HSpeed = clamp(New_HSpeed, -BaseSpeed, BaseSpeed);
speed = clamp(speed, -BaseSpeed, BaseSpeed);

if(place_free(x + New_HSpeed, y + New_VSpeed))
{
	hspeed = New_HSpeed;
	vspeed = New_VSpeed;
}
else
{

	speed = -speed * .15;
}



