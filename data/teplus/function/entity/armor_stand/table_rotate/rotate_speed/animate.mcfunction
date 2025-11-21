#Repeat the function, so a timer is run at 25 ticks
# Add speed tag to make the armor stands spin faster
# The fake player determines the duration of this action
schedule function teplus:entity/armor_stand/table_rotate/rotate_speed/animate 1t
scoreboard players add #Lspn.Duration teplus.open_lapis 1

execute if score #Lspn.Duration teplus.open_lapis matches 25.. run function teplus:entity/armor_stand/table_rotate/rotate_speed/stop