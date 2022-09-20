
advancement revoke @s only technical_anvil:placed 
###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Get player current rotation","color":"gray","italic":true,"bold":false}]

execute store result score $Rotation tep.avl run data get entity @s Rotation[0] 
# EAST
execute if score $Rotation tep.avl matches 225..315 run scoreboard players set $Towards tep.avl 1 
execute if score $Rotation tep.avl matches -135..-45 run scoreboard players set $Towards tep.avl 1 
# SOUTH
execute if score $Rotation tep.avl matches -45..45 run scoreboard players set $Towards tep.avl 2 
execute if score $Rotation tep.avl matches -360..-315 run scoreboard players set $Towards tep.avl 2 
# WEST
execute if score $Rotation tep.avl matches 45..135 run scoreboard players set $Towards tep.avl 3 
execute if score $Rotation tep.avl matches -315..-225 run scoreboard players set $Towards tep.avl 3 
# NORTH
execute if score $Rotation tep.avl matches 135..225 run scoreboard players set $Towards tep.avl 4 
execute if score $Rotation tep.avl matches -225..-135 run scoreboard players set $Towards tep.avl 4 

function technical_anvil:place/look_all_heads
execute as @e[type=marker,tag=teplus.placed] at @s align xyz run function technical_anvil:place/in_ground
