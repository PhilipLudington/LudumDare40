BaseSpeed = 4;
IsCasting = false;
IsPressing = false;
PressingLength = room_speed / 15;
//SpellBook = instance_create_depth(0,0,-10000, objectCasting);
alarm_set(0,room_speed);