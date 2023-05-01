

# Set an ID
scoreboard players operation @s teplus.block_id = $techanv teplus.block_id

# Set tags
tag @s add teplus.decorative
tag @s add teplus.techanvdec

# Set the Item display data

data merge entity @s {item:{id:"minecraft:anvil",Count:1b},transformation:{translation:[0.5f, 1.12f, 0.18f],scale:[0.500f,0.500f,0.500f],right_rotation: [0.0f, 0.0f, 0.0f, 1.0f],left_rotation: [0.0f, -0.70710677f, 0.0f, 0.70710677f]}}