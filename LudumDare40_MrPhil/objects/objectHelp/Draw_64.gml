/// @description Totem count
var SavedColor = draw_get_color();
draw_set_color(c_black);
draw_set_font(fontDefault);
draw_text(325,485, string(instance_number(objectTotem)));
draw_set_color(SavedColor);