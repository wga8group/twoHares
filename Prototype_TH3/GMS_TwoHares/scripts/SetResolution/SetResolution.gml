

monitorHeight = display_get_height();
monitorWidth = display_get_width();

resultWidth = (monitorWidth -argument0)/2;
resultHeight = (monitorHeight - argument1)/2;

if resultWidth == 0 {
	resultWidth = monitorWidth/10 
}

if resultHeight == 0 {
	resultHeight = monitorHeight/10 
}

window_set_size(argument0,argument1);
window_set_position(resultWidth,resultHeight);
