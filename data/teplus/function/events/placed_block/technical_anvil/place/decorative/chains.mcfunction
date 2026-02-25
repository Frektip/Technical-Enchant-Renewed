function teplus:events/placed_block/technical_anvil/place/decorative/set_data

# Set the Block display data
# @Args
# $axis: "x" or "z" for the chain axis aligment
# $tx/$tz: translation in X & Z axis

$data merge entity @s {block_state:{Name:"minecraft:iron_chain",Properties:{axis:"$(axis)"}},transformation:{translation:[$(tx)f,0.520f,$(tz)f],scale:[1.000f,1.000f,1.000f]}}