#Spin the armor stands only when a player is nearby unless low performance mode is active
execute if score #tslpm game.Opts matches 1 unless entity @s[tag=speed_enchanted] if entity @a[distance=..10] run tp @s ~ ~ ~ ~1 ~

#Detect if the enchanting table is used, to stop the normal spin and
# proceeds to make it faster
execute if entity @s[tag=speed_enchanted] run function enchantplus:entity/armor_stand/table_rotate/enchanted_speed

#Do special stuff with each armor stand
execute as @s[tag=teplus.level1] run function enchantplus:entity/armor_stand/table_rotate/level1
execute as @s[tag=teplus.level2] run function enchantplus:entity/armor_stand/table_rotate/level2
execute as @s[tag=teplus.level3] run function enchantplus:entity/armor_stand/table_rotate/level3

#Detect 24 charged bookshelves
execute as @s[tag=!teplus.level_mega] positioned ~ ~1 ~ if entity @e[type=marker,tag=teplus.enchanting_table,sort=nearest,tag=teplus.tier4,distance=...5] run function enchantplus:entity/armor_stand/table_rotate/mega_up

#Not has 24 charged bookshelves
execute as @s[tag=teplus.level_mega] positioned ~ ~1 ~ if entity @e[type=marker,tag=teplus.enchanting_table,sort=nearest,tag=!teplus.tier4,distance=...5] run function enchantplus:entity/armor_stand/table_rotate/mega_down
