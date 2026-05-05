# Set an ID
scoreboard players operation @s teplus.block_id = $current teplus.block_id

# Set tags
tag @s add teplus.decorative
tag @s add teplus.decor_admbx

# Set the Item display data
$data merge entity @s {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjYyNjUxODc5ZDg3MDQ5OWRhNTBlMzQwMzY4MDBkZGZmZDUyZjNlNGUxOTkzYzVmYzBmYzgyNWQwMzQ0NmQ4YiJ9fX0="}]}}},transformation:{translation:[0.500f,0.250f,0.500f],scale:[0.750f,0.750f,0.750f],right_rotation:[0.05f,0f,0f,1f],left_rotation:[0f,$(ry)f,0f,$(rw)f]}}