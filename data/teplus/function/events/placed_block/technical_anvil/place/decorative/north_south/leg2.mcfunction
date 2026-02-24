

# Set an ID
scoreboard players operation @s teplus.block_id = $techanv teplus.block_id

# Set tags
tag @s add teplus.decorative
tag @s add teplus.techanvdec

# Set the Item display data

data merge entity @s {block_state:{Name:"minecraft:polished_deepslate_wall"},transformation:{translation:[0.550f,0.000f,-0.525f],scale:[0.800f,0.995f,2.05f]}}