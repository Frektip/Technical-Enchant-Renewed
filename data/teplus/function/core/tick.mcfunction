##-----#-----#-----#-----# Entity Loop #-----#-----#-----#-----#-----#
execute as @e[type=marker,tag=teplus.marker] at @s run function teplus:entity/marker/core
execute as @e[type=armor_stand,tag=teplus.armor_stand] at @s run function teplus:entity/armor_stand/core

execute as @a at @s run function teplus:entity/player/core

scoreboard players enable @a teplus.trigger.get_birthday_potion