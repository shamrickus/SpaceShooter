vpressed = false
if(keyboard_check(ord('W')) || keyboard_check(vk_up)){
    if(y - sprite_height/2 - 100 >= 0) vspeed = -10
    vpressed = true
}
else if(keyboard_check(ord('S')) || keyboard_check(vk_down)){
    if(y + sprite_width/2 <= window_get_height()) vspeed=10
    vpressed = true
}
else{
    if(!vpressed){
        vspeed = 0
    }
}

hpressed = false
if(keyboard_check(ord('A')) || keyboard_check(vk_left)){
   if(x - sprite_width / 2 >= 0) hspeed=-7
   hpressed = true
}
else if(keyboard_check(ord('D')) || keyboard_check(vk_right)){
    if(x + sprite_width/2 <= 650) hspeed = 10
    hpressed = true
}
else if(!hpressed){
    hspeed = 0
}

if(x - sprite_width/2 < 0){ x = sprite_width /2}
else if(x + sprite_width/2  > 650) x = 650 - sprite_width/2
if(y - 100 - sprite_height/2 < 0) y = 100 + sprite_height/2;
else if(y + sprite_height/2 > window_get_height()) y = window_get_height() - sprite_height / 2


