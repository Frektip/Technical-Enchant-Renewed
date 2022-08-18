#Spin the armor stands only when a player is nearby unless low performance mode is active
execute if score #tslpm game.Opts matches 1 unless entity @s[tag=speed_enchanted] if entity @a[distance=..10] run tp @s ~ ~ ~ ~1 ~

#Detect if the enchanting table is used, to stop the normal spin and
# proceeds to make it faster
execute if score #tslpm game.Opts matches 1 if entity @s[tag=speed_enchanted] run tp @s ~ ~ ~ ~50 ~

#Do special stuff with each armor stand
execute as @s[tag=teplus.level1] run function enchantplus:entity/armor_stand/level1
execute as @s[tag=teplus.level2] run function enchantplus:entity/armor_stand/level2
execute as @s[tag=teplus.level3] run function enchantplus:entity/armor_stand/level3