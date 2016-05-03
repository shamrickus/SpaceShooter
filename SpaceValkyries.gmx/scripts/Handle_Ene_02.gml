res = argument0

if(res.yDiff == 0){
    res.yDiff = irandom_range(50, 300)
    res.oldY = res.yInit
}
if(res.y + 65 >= room_height || res.y - 65 <=0 ){
    res.vspeed = -res.vspeed;
}
if(res.x <= -30){
    with(res){
        instance_destroy();
    }
}
if(res.y > res.oldY + res.yDiff || res.y < res.oldY - res.yDiff){
    res.oldY = res.y
    res.vspeed = -res.vspeed   
}
