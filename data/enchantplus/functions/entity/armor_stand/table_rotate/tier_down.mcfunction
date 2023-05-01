item replace entity @s armor.head with air
tag @s remove tier.up

execute as @e[type=marker,tag=teplus.enchanting_table,distance=...5,sort=nearest,limit=1] at @s run function enchantplus:entity/marker/add_base_charge/lower_tier