#Stop the looping function and reset the dake timer player for the next time
#Remove the speed tag from the armor stand
schedule clear enchantplus:entity/armor_stand/speed_animation
scoreboard players reset #Lspn.Duration tep.spd_animt
tag @e[type=armor_stand,tag=speed_enchanted] remove speed_enchanted