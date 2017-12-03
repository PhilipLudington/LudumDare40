/// @description Totem count
var SavedColor = draw_get_color();
draw_set_color(c_red);
draw_set_font(fontDefault);
draw_text(325,485, string(instance_number(objectTotem)));
draw_circle(400,400,20, true);
draw_set_color(SavedColor);