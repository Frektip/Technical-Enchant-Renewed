

# Set an ID
scoreboard players operation @s teplus.block_id = $techanv teplus.block_id

# Set tags
tag @s add teplus.decorative
tag @s add teplus.techanvdec

# Set the Item display data

data merge entity @s {block_state:{Name:"minecraft:polished_blackstone_brick_slab"},transformation:{translation:[0.000f,0.368f,-0.002f],scale:[1.000f,1.000f,1.005f]}}