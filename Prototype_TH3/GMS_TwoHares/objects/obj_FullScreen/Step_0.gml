/// @description Insert description here
// You can write your code in this editor
//ввклюение-отключение полного экрана при нажатии ctrl + enter
if keyboard_check_direct(vk_control) && keyboard_check_pressed(vk_enter){
 if window_get_fullscreen() {
  window_set_fullscreen(false) 
 }
 else{
  window_set_fullscreen(true)
 }
}