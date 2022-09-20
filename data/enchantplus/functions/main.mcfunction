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

#Player Only
execute as @a at @s run function enchantplus:entity/player/core

schedule function enchantplus:main 1t 