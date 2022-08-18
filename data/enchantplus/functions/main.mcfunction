##-----#-----#-----#-----# Entity Loop #-----#-----#-----#-----#-----#
#Item is for some tools enchantments, guide and the core thing to make this datapack work
#Horse is for custom horse armor, including frost walker
#Marker is for the charged bookshelf and enchanting table
#Armor Stand is for the "decorative" part of the enchanting table
#Player, well is the player hahaha

execute as @e[type=item,tag=!teplus.item_checked] at @s run function enchantplus:entity/item/core
execute as @e[type=horse] at @s run function enchantplus:entity/horse/core
execute as @e[type=marker,tag=teplus.marker] at @s run function enchantplus:entity/marker/core
execute as @e[type=armor_stand,tag=teplus.armor_stand] at @s run function enchantplus:entity/armor_stand/group

#Entity with marine grace
execute as @e[type=!#enchantplus:antisoul,tag=ma.graced] at @s run function enchantplus:result/marine_grace/turn
#execute as @e[type=!#enchantplus:antisoul,tag=marine.carried] at @s run function enchantplus:result/marine_grace/carried

#Player Only
execute as @a at @s run function enchantplus:entity/player/core

scoreboard players enable @a TellrawEnch 
##-----#-----#-----#-----# Disenchanting System #-----#-----#-----#-----#-----#
#Separated from the rest due to some things:
# -Tell the difference between Custom and Vanilla enchantments
# -Not remove Custom and Vanilla curses
execute if score #diench game.Opts matches 0 as @a at @s run function enchantplus:disenchant/core

schedule function enchantplus:main 1t 