for(i = 0; i < instance_number(obj_ene_01); ++i){
    ene = instance_find(obj_ene_01, i)
    if(ene.x + sprite_width + 5 < 0){
        with(ene) instance_destroy()
    }
}

for(i = 0; i < instance_number(obj_ene_02); ++i){
    ene2 = instance_find(obj_ene_02, i)
    if(ene2.x + sprite_width + 5 < 0){
        with(ene2) instance_destroy()
    }
}
