# Stop the looping function and reset the fake player for the next time
# Remove the speed tag from the armor stand
schedule clear teplus:entity/armor_stand/table_rotate/rotate_speed/animate
execute as @e[type=armor_stand,tag=teplus.speed_enchanted] run data modify entity @s Pose.Head[0] set value 0.0f
tag @e[type=armor_stand,tag=teplus.speed_enchanted] remove teplus.speed_enchanted
tag @e[type=marker,tag=teplus.speed_enchanted] remove teplus.speed_enchanted
scoreboard players reset #Lspn.Duration teplus.open_lapis