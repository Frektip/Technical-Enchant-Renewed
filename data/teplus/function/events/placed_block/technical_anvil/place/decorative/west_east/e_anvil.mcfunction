

# Set an ID
scoreboard players operation @s teplus.block_id = $techanv teplus.block_id

# Set tags
tag @s add teplus.decorative
tag @s add teplus.techanvdec

# Set the Item display data

data merge entity @s {item:{id:"minecraft:anvil",Count:1b},transformation:{translation:[0.180f, 1.12f, 0.5f],scale:[0.500f,0.500f,0.500f]}}