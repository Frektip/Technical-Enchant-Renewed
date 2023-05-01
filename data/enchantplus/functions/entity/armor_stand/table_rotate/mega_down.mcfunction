data remove entity @s ArmorItems[3].tag.Enchantments
tag @s remove teplus.level_mega

execute as @e[type=marker,tag=teplus.enchanting_table,distance=...5,sort=nearest,limit=1] at @s run function enchantplus:entity/marker/add_base_charge/lower_tier