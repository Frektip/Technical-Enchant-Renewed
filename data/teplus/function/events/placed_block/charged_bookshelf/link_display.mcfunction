# Set an ID same as the marker
scoreboard players operation @s teplus.block_id = $current teplus.block_id

# Set tags
tag @s add teplus.decorative
tag @s add teplus.visual_bookshelf

# Set the Item display data
data merge entity @s {item:{id:"minecraft:bookshelf",count:1,components:{"minecraft:enchantment_glint_override":true}},transformation:{translation:[0.500f,-0.500f,0.500f],scale:[1.005f,1.005f,1.005f]}}