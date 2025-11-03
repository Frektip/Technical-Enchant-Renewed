data remove entity @s equipment.head.components.minecraft:enchantment_glint_override
tag @s remove teplus.lapis_glint

#execute as @e[type=marker,tag=teplus.enchanting_table,distance=...5,sort=nearest,limit=1] at @s run function enchantplus:entity/marker/add_base_charge/lower_tier