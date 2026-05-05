##-----#-----#-----#-----# Entity Loop #-----#-----#-----#-----#-----#
execute as @e[type=marker,tag=teplus.marker] at @s run function teplus:entity/marker/core
execute as @e[type=armor_stand,tag=teplus.armor_stand] at @s run function teplus:entity/armor_stand/core
execute as @e[type=chest_minecart,tag=teplus.technical_anvil] at @s run function teplus:anvil/chest_minecart
execute as @e[type=area_effect_cloud,tag=teplus.aec,predicate=!teplus:with_chest_minecart] at @s run function teplus:anvil/events/destroy_from_aec

execute as @a at @s run function teplus:entity/player/core

scoreboard players enable @a teplus.trigger.get_birthday_potion