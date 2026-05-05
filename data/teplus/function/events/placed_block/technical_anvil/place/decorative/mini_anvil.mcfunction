function teplus:events/placed_block/technical_anvil/place/decorative/set_data

# Set the Item display data
# @Args
# $tx/$tz: translation in X & Z axis
# $lry/$lrw: left rotation in Y & W axis

$data merge entity @s {item:{id:"minecraft:anvil",count: 1},transformation:{translation:[$(tx)f, 1.12f, $(tz)f],scale:[0.500f,0.500f,0.500f],left_rotation: [0.0f, $(lry)f, 0.0f, $(lrw)f]}}