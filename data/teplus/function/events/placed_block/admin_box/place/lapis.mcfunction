# Set an ID
scoreboard players operation @s teplus.block_id = $current teplus.block_id

# Set tags
tag @s add teplus.decorative
tag @s add teplus.decor_admbx

# Set the Item display data
data merge entity @s {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWMwZTkxNDQ3NmUxYjE1ZGEyYTkxZjQ1Njk2ZGQyMTc2NjlkNGRhYzRmYTYyMTY1MDkyOWJhY2UwM2RlMjI1NCJ9fX0="}]}}},transformation:{translation:[0.500f,-0.350f,0.300f],scale:[1.80f,0.40f,0.40f],right_rotation:[-0.5f,0f,0f,1f]}}