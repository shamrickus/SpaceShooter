arg0 = argument0
arg1 = argument1

name0 = object_get_name(arg0.object_index)
name1 = object_get_name(arg1.object_index)

test1 = 0
if(name0 == "obj_main_01" && (name1 == "obj_ene_01" || name1 == "obj_ene_02")) test1 = 1
else if((name0 == "obj_ene_01" || name0 == "obj_ene_02") && name1 == "obj_main_01") test1 =2

if(test1 == 1){
    if(arg0.energy > arg1.dmg) arg0.energy-=arg1.dmg
    else{
        arg1.dmg -= arg0.energy
        arg0.energy = 0
        arg0.health-=arg1.dmg*5        
    }
    score += arg1.points
    with(arg1) instance_destroy()
}
else if(test1 == 2){
    if(arg1.energy > arg0.dmg) arg1.energy-=arg0.dmg
    else{
        arg0.dmg -= arg1.energy
        arg1.energy = 0
        arg1.health-=arg0.dmg*5
    }
    score += arg0.points
    with(arg0) instance_destroy()
}

test = 0;
if(name0 == "obj_main_missile_01" && (name1 == "obj_ene_01" || name1 == "obj_ene_02")) test = 1
else if((name0 == "obj_ene_01"  || name0 == "obj_ene_02") && name1 == "obj_main_missile_01") test = 2

if(test > 0){
    if(test == 1) score += arg1.points
    else if(test == 2) score += arg0.points
    with(arg0) instance_destroy()
    with(arg1) instance_destroy()
}
