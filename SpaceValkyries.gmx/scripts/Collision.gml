arg0 = argument0
arg1 = argument1

name0 = object_get_name(arg0.object_index)
name1 = object_get_name(arg1.object_index)

test1 = 0
if(name0 == "obj_main_01" && (name1 == "obj_ene_01" || name1 == "obj_ene_02" || name1 == "obj_ene_03")) test1 = 1
else if((name0 == "obj_ene_01" || name0 == "obj_ene_02" || name0 == "obj_ene_03") && name1 == "obj_main_01") test1 =2

if(test1 == 1){
    if(arg0.energy > arg1.dmg){
        arg0.energy-=arg1.dmg;
        arg0.alarm[2] = ( 2 + global.difficulty ) * room_speed;
    }
    else{
        var dam = arg1.dmg - arg0.energy;
        arg0.energy = 0;
        arg0.health -= dam ;       
    }
    score += arg1.points * (global.difficulty + 1)  / 2
        if(irandom_range(1, 10) > 8)instance_create(arg0.x, arg0.y, missile_pickup)
    with(arg1) instance_destroy()
}
else if(test1 == 2){
    if(arg1.energy > arg0.dmg){
        arg1.energy-=arg0.dmg
        arg1.alarm[2] = ( 2 + global.difficulty ) * room_speed;
    }
    else{
        var dam = arg0.dmg - arg1.energy;
        arg1.energy = 0
        arg1.health-= dam
    }
    score += arg0.points * (global.difficulty + 1)  / 2
    if(irandom_range(1, 10) > 8)instance_create(arg0.x, arg0.y, missile_pickup)
    with(arg0) instance_destroy()
}

test = 0;
if((name0 == "obj_ene_missile_01" || name0 == "obj_main_missile_01") && (name1 == "obj_ene_01" || name1 == "obj_ene_02" || name1 == "obj_ene_03")) test = 1
else if((name0 == "obj_ene_01"  || name0 == "obj_ene_02" || name0 == "obj_ene_03") && (name1 == "obj_main_missile_01" || name1 == "obj_ene_missile_01")) test = 2

if(test > 0){
    if(test == 1) score += arg1.points * (global.difficulty + 1) 
    else if(test == 2) score += arg0.points * (global.difficulty + 1) 
    with(arg0) instance_destroy()
    with(arg1) instance_destroy()
}
