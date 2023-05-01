

# Set an ID
scoreboard players operation @s teplus.block_id = $techanv teplus.block_id

# Set tags
tag @s add teplus.decorative
tag @s add teplus.techanvdec

# Set the Item display data

data merge entity @s {block_state:{Name:"minecraft:chain",Properties:{axis:"z"}},transformation:{translation:[0.500f,0.520f,0.000f],scale:[1.000f,1.000f,1.000f]}}
