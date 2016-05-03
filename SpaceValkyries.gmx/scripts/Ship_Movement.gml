vpressed = false
if(keyboard_check(ord('W')) || keyboard_check(vk_up)){
    if(y - 105 >= 0) vspeed = -10
    vpressed = true
}
else if(keyboard_check(ord('S')) || keyboard_check(vk_down)){
    if(y + sprite_width + 5 <= window_get_height()) vspeed=10
    vpressed = true
}
else{
    if(!vpressed){
        vspeed = 0
    }
}

hpressed = false
if(keyboard_check(ord('A')) || keyboard_check(vk_left)){
   if(x - 5 >= 0) hspeed=-7
   hpressed = true
}
else if(keyboard_check(ord('D')) || keyboard_check(vk_right)){
    if(x + sprite_width + 5 <= 650) hspeed = 10
    hpressed = true
}
else if(!hpressed){
    hspeed = 0
}

if(x - 5 < 0){ x = 0}
else if(x + sprite_width + 5 > 650) x = 650 - sprite_width
if(y - 105 < 0) y = 100
else if(y + sprite_height + 5 > window_get_height()) y = window_get_height() - sprite_height


