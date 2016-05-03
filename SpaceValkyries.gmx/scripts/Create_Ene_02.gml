main = argument0

//find a random (empty) position
{
    do
    {
        ecks = room_width + 50 + irandom( 50 );
        wie =  101 + irandom( room_height - 101 );
    }
    until( position_empty( ecks, wie ));
}

//put it there
inst = instance_create( ecks, wie, obj_ene_02 );

//give it some random velocity
with( inst ){
    hspeed = irandom_range(-5 - ( global.difficulty * 3.5 ), -10  - ( global.difficulty * 7.5 ) );
    vspeed = irandom_range(2 + ( global.difficulty * 5 ), 5 + ( global.difficulty * 10 ) );   
}

//HANDLE IT!!!
Handle_Ene_02(inst);
