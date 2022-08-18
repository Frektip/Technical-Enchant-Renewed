#Repeat the function, so a timer is run a 25 ticks
#Add speed tag to make the armor stands spin faster
#The fake player determines the duration of this action, I think 25 ticks is good
schedule function enchantplus:entity/armor_stand/speed_animation 1t
scoreboard players add #Lspn.Duration tep.spd_animt 1

execute if score #Lspn.Duration tep.spd_animt matches 25.. run function enchantplus:entity/armor_stand/speed_animation_stop