if(keyboard_check(vk_escape))
{
	game_end();
}
if(keyboard_check(vk_enter))
{
	room_goto_next();
}

// Help Screen 
// ASCI 63 = ?
if(keyboard_check(ord("H")) || keyboard_check(ord("/")) || keyboard_check(vk_tab) || keyboard_check(vk_f1))
{
	with(HelpScreen)
	{
		visible = true;
		alarm_set(0,room_speed / 5);
	}
}

if(keyboard_check(ord("/")) && keyboard_check(vk_shift))
{
	show_debug_message("shift+/ pressed");
	
	with(HelpScreen)
	{
		visible = true;
		alarm_set(0,room_speed / 5);
	}
}

if(keyboard_check(ord("?")))
{
	show_debug_message("? pressed");
		
	with(HelpScreen)
	{
		visible = true;
		alarm_set(0,room_speed / 5);
	}
}