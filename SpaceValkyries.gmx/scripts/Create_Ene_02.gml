main = argument0

height = irandom_range(200, window_get_height() + sprite_get_height(sp_ene_ship_02) + 100)

res = instance_create(global.spawn_x - 30, height, obj_ene_02)

res.hspeed = irandom_range(-5, -10)
res.vspeed = irandom_range(2, 5)
res.yInit = height
Handle_Ene_02(res)
