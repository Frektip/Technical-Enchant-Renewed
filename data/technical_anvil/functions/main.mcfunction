execute as @e[type=chest_minecart,tag=teplus.technical_anvil] at @s run function technical_anvil:chest_minecart
execute as @e[type=area_effect_cloud,tag=teplus.technical_anvil_aec,predicate=!technical_anvil:with_chest_minecart] at @s run function technical_anvil:events/destroy_from_aec

# Prevent creeper explosions from breaking the decorative parts of the table if mobGreifing gamerule
#  is set to false
execute store result score $MobGriefing teplus.vgmrl run gamerule mobGriefing
execute if score $MobGriefing teplus.vgmrl matches 0 as @e[type=minecraft:falling_block,tag=teplus.technical_anvil_decorative] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

schedule function technical_anvil:main 1t