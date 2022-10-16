#Stop the looping function and reset the dake timer player for the next time
#Remove the speed tag from the armor stand
schedule clear enchantplus:entity/armor_stand/speed_animation
execute as @e[type=armor_stand,tag=speed_enchanted] run data modify entity @s Pose.Head[0] set value 0.0f
tag @e[type=armor_stand,tag=speed_enchanted] remove speed_enchanted
tag @e[type=marker,tag=speed_enchanted] remove speed_enchanted
scoreboard players reset #Lspn.Duration tep.spd_animt