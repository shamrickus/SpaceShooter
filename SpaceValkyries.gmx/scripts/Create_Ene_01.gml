main = argument0

//find a random (empty) position
{
    do
    {
        ecks = room_width + 50 + irandom( 50 );
        wie =  66 + irandom( room_height - 66 );
    }
    until( position_empty( ecks, wie ));
}

//put the enemy there
res = instance_create( ecks, wie, obj_ene_01);

//give it a random speed
res.hspeed = irandom_range(-5 - ( global.difficulty * 2 ), -10 - ( global.difficulty * 4 ) )

