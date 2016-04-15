res = argument0

if(res.yDiff == 0){
    res.yDiff = irandom_range(50, 300)
    res.oldY = res.yInit
}

if(res.y > res.oldY + res.yDiff || res.y < res.oldY - res.yDiff){
    res.oldY = res.y
    res.vspeed = -res.vspeed   
}
