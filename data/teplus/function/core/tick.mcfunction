##-----#-----#-----#-----# Entity Loop #-----#-----#-----#-----#-----#
execute as @e[type=marker,tag=teplus.marker] at @s run function teplus:entity/marker/core


scoreboard players enable @a teplus.trigger.get_birthday_potion
execute as @a unless score @s teplus.trigger.get_birthday_potion matches 0 run function teplus:events/trigger/get_birthday_potion