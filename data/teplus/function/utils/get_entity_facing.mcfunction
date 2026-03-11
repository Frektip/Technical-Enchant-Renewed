#------------ Debug Message ------------#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Getting entity facing","color":"gray","italic":true,"bold":false}]
#---------------------------------------#

# Set the current facing from the entity in a score

# Get the entity rotation
execute store result score $Rotation teplus.tmp run data get entity @s Rotation[0] 

# EAST
execute if score $Rotation teplus.tmp matches 225..315 run scoreboard players set $Facing teplus.tmp 1 
execute if score $Rotation teplus.tmp matches -135..-45 run scoreboard players set $Facing teplus.tmp 1 
# SOUTH
execute if score $Rotation teplus.tmp matches -45..45 run scoreboard players set $Facing teplus.tmp 2 
execute if score $Rotation teplus.tmp matches -360..-315 run scoreboard players set $Facing teplus.tmp 2 
# WEST
execute if score $Rotation teplus.tmp matches 45..135 run scoreboard players set $Facing teplus.tmp 3 
execute if score $Rotation teplus.tmp matches -315..-225 run scoreboard players set $Facing teplus.tmp 3 
# NORTH
execute if score $Rotation teplus.tmp matches 135..225 run scoreboard players set $Facing teplus.tmp 4 
execute if score $Rotation teplus.tmp matches -225..-135 run scoreboard players set $Facing teplus.tmp 4 