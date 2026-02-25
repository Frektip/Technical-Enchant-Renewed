function teplus:events/placed_block/technical_anvil/place/decorative/set_data

# Set the Block display data
# @Args
# $tx/$ty/$tz: translation in X,Y,Z axis
# $sx/$sz: scale in X & Z axis

$data merge entity @s {block_state:{Name:"minecraft:polished_blackstone_brick_slab"},transformation:{translation:[$(tx)f,$(ty)f,$(tz)f],scale:[$(sx)f,1.000f,$(sz)f]}}