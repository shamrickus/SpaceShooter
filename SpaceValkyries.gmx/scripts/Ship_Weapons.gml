
if(keyboard_check(vk_control) && can_fire && missles > 0){
    instance_create(x + sprite_width, y - sprite_height / 2, obj_main_missle_01)
    alarm[0] = 50
    can_fire = false;
    missles--
}
