main = argument0

upper = 0
lower = 0
if(main.y + sprite_height > 0) upper = main.sprite_height
if(main.y - main.sprite_height - main.sprite_height < window_get_height()) lower = main.sprite_height

height = -10
while(height < 100) height = irandom_range(main.y + upper, main.y - main.sprite_height - lower)

res = instance_create(global.spawn_x, height, obj_ene_01)
res.hspeed = irandom_range(-3, -10)

