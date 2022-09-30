###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Player break a block with a Custom Enchantment","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Getting player's rotation","color":"gray","italic":true,"bold":false}]

#including facing up and down
execute store result score $Plyrot teplus.data run data get entity @s Rotation[0]

# NORTH - SOUTH
execute if score $Plyrot teplus.data matches 135..225 run scoreboard players set $Facing teplus.data 1
execute if score $Plyrot teplus.data matches -225..-135 run scoreboard players set $Facing teplus.data 1

execute if score $Plyrot teplus.data matches -45..45 run scoreboard players set $Facing teplus.data 2
execute if score $Plyrot teplus.data matches -360..-315 run scoreboard players set $Facing teplus.data 2

# EAST - WEST
execute if score $Plyrot teplus.data matches 225..315 run scoreboard players set $Facing teplus.data 3
execute if score $Plyrot teplus.data matches -135..-45 run scoreboard players set $Facing teplus.data 3

execute if score $Plyrot teplus.data matches 45..135 run scoreboard players set $Facing teplus.data 4
execute if score $Plyrot teplus.data matches -315..-225 run scoreboard players set $Facing teplus.data 4

# UP -DOWN
execute if entity @s[x_rotation=-90..-45] run scoreboard players set $Facing teplus.data 5
execute if entity @s[x_rotation=45..90] run scoreboard players set $Facing teplus.data 6