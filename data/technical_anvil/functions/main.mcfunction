execute as @e[type=chest_minecart,tag=teplus.technical_anvil] at @s run function technical_anvil:chest_minecart
execute as @e[type=area_effect_cloud,tag=teplus.technical_anvil_aec,predicate=!technical_anvil:with_chest_minecart] at @s run function technical_anvil:events/destroy_from_aec

schedule function technical_anvil:main 1t