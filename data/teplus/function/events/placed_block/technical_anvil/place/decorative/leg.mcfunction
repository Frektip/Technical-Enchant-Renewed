function teplus:events/placed_block/technical_anvil/place/decorative/set_data

# Set the Block display data
# @Args
# $tx/$tz: translation in X & Z axis
# $sx/$sz: scale in X & Z axis

$data merge entity @s {block_state:{Name:"minecraft:polished_deepslate_wall"},transformation:{translation:[$(tx)f,0.000f,$(tz)f],scale:[$(sx)f,0.995f,$(sz)f]}}