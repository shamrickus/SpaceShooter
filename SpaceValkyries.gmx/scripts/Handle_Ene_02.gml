res = argument0

if(res.yDiff == 0){
    res.yDiff = irandom_range(50, 300)
    res.oldY = res.yInit
}
if(res.y + 100 >= room_height ){
    res.vspeed = -res.vspeed;
    res.y = room_height - 101;
}
else if( res.y - 100 <=0 ){
    res.vspeed = -res.vspeed;
    res.y = 101;
}
if(res.x <= -50){
    with(res){
        instance_destroy();
    }
}
if(res.y > res.oldY + res.yDiff || res.y < res.oldY - res.yDiff){
    res.oldY = res.y
    res.vspeed = -res.vspeed   
}

