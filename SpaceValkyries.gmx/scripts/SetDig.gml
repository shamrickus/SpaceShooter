///SetDig( obj_digit_txt instance ) - Updates the digit appropriately to show the settings



/**************************************************************
    This is a big nasty script, I recommend moonwalking away
**************************************************************/


switch( argument0.digid ){

    case global.vol_odig:
        switch( ( global.volume * 100 ) % 10 ){
                case 1:
                    sprite_index = spr_1_txt;
                    break;
                case 2:
                    sprite_index = spr_2_txt;
                    break;
                case 3:
                    sprite_index = spr_3_txt;
                    break;
                case 4:
                    sprite_index = spr_4_txt;
                    break;
                case 5:
                    sprite_index = spr_5_txt;
                    break;
                case 6:
                    sprite_index = spr_6_txt;
                    break;
                case 7:
                    sprite_index = spr_7_txt;
                    break;
                case 8:
                    sprite_index = spr_8_txt;
                    break;
                case 9:
                    sprite_index = spr_9_txt;
                    break;
                default:
                    sprite_index = spr_0_txt;
                    break;
            }                            
        break;
        
        
    case global.vol_tdig:
        switch( ( global.volume * 100 ) div 10 ){
                case 1:
                    sprite_index = spr_1_txt;
                    break;
                case 2:
                    sprite_index = spr_2_txt;
                    break;
                case 3:
                    sprite_index = spr_3_txt;
                    break;
                case 4:
                    sprite_index = spr_4_txt;
                    break;
                case 5:
                    sprite_index = spr_5_txt;
                    break;
                case 6:
                    sprite_index = spr_6_txt;
                    break;
                case 7:
                    sprite_index = spr_7_txt;
                    break;
                case 8:
                    sprite_index = spr_8_txt;
                    break;
                case 9:
                    sprite_index = spr_9_txt;
                    break;
                default:
                    sprite_index = spr_0_txt;
                    break;
            }        
        break;
        
    case global.vol_hdig:
        //only allowed values are 0 if fx_vol=/=1 or 1 otherwise
        if( global.volume == 1){
            sprite_index = spr_1_txt;
        }
        else{
            sprite_index = spr_0_txt;
        }
        break;
        
        
    case global.mus_odig:
        switch( ( global.music_volume * 100 ) % 10 ){
                case 1:
                    sprite_index = spr_1_txt;
                    break;
                case 2:
                    sprite_index = spr_2_txt;
                    break;
                case 3:
                    sprite_index = spr_3_txt;
                    break;
                case 4:
                    sprite_index = spr_4_txt;
                    break;
                case 5:
                    sprite_index = spr_5_txt;
                    break;
                case 6:
                    sprite_index = spr_6_txt;
                    break;
                case 7:
                    sprite_index = spr_7_txt;
                    break;
                case 8:
                    sprite_index = spr_8_txt;
                    break;
                case 9:
                    sprite_index = spr_9_txt;
                    break;
                default:
                    sprite_index = spr_0_txt;
                    break;
            }                            
        break;
        
        
    case global.mus_tdig:
        switch( ( global.music_volume * 100 ) div 10 ){
                case 1:
                    sprite_index = spr_1_txt;
                    break;
                case 2:
                    sprite_index = spr_2_txt;
                    break;
                case 3:
                    sprite_index = spr_3_txt;
                    break;
                case 4:
                    sprite_index = spr_4_txt;
                    break;
                case 5:
                    sprite_index = spr_5_txt;
                    break;
                case 6:
                    sprite_index = spr_6_txt;
                    break;
                case 7:
                    sprite_index = spr_7_txt;
                    break;
                case 8:
                    sprite_index = spr_8_txt;
                    break;
                case 9:
                    sprite_index = spr_9_txt;
                    break;
                default:
                    sprite_index = spr_0_txt;
                    break;
            }        
        break;
        
        
    case global.mus_hdig:
        //only allowed values are 0 if fx_vol=/=1 or 1 otherwise
        if( global.music_volume == 1){
            sprite_index = spr_1_txt;
        }
        else{
            sprite_index = spr_0_txt;
        }
        break;

    case global.fx_odig:
        switch( ( global.fx_volume * 100 ) % 10 ){
                case 1:
                    sprite_index = spr_1_txt;
                    break;
                case 2:
                    sprite_index = spr_2_txt;
                    break;
                case 3:
                    sprite_index = spr_3_txt;
                    break;
                case 4:
                    sprite_index = spr_4_txt;
                    break;
                case 5:
                    sprite_index = spr_5_txt;
                    break;
                case 6:
                    sprite_index = spr_6_txt;
                    break;
                case 7:
                    sprite_index = spr_7_txt;
                    break;
                case 8:
                    sprite_index = spr_8_txt;
                    break;
                case 9:
                    sprite_index = spr_9_txt;
                    break;
                default:
                    sprite_index = spr_0_txt;
                    break;
            }                            
        break;
        
        
    case global.fx_tdig:
        switch( ( global.fx_volume * 100 ) div 10 ){
                case 1:
                    sprite_index = spr_1_txt;
                    break;
                case 2:
                    sprite_index = spr_2_txt;
                    break;
                case 3:
                    sprite_index = spr_3_txt;
                    break;
                case 4:
                    sprite_index = spr_4_txt;
                    break;
                case 5:
                    sprite_index = spr_5_txt;
                    break;
                case 6:
                    sprite_index = spr_6_txt;
                    break;
                case 7:
                    sprite_index = spr_7_txt;
                    break;
                case 8:
                    sprite_index = spr_8_txt;
                    break;
                case 9:
                    sprite_index = spr_9_txt;
                    break;
                default:
                    sprite_index = spr_0_txt;
                    break;
            }        
        break;
        
        
    case global.fx_hdig:
        //only allowed values are 0 if fx_vol=/=1 or 1 otherwise
        if( global.fx_volume == 1){
            sprite_index = spr_1_txt;
        }
        else{        
            sprite_index = spr_0_txt;
        }
        break;
        
        
    default:
        //pls no
        break;
}
