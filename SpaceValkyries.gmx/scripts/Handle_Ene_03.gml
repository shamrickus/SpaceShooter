if(x + sprite_width <= window_get_width()){
    hspeed = 0
    if(targetY - y > -9 && targetY - y < 9){
        fire = true
        tracking = false
    }
    else if(!tracking && !fire){
        ship = instance_find(obj_main_01, 0)
        targetY = ship.y
        
        if(targetY - y > 0) vspeed = 5
        else vspeed = -5
        tracking = true
    }
    if(fire){
        //fire missle!
        fire = false
    }
}
