if(x + sprite_width - 5 <= window_get_width()){
    hspeed = 0
    if(targetY - y > -9 && targetY - y < 9){
        fire = true
        tracking = false
    }
    else if(!tracking && !fire){
        ship = instance_find(obj_main_01, 0)
        targetY = ship.y
        
        if(targetY - y > 0) vspeed = 4
        else vspeed = -4
        tracking = true
    }
    if(fire){
        //fire missle!
        fire = false
    }
}
