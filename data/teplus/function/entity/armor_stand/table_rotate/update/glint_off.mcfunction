data remove entity @s equipment.head.components.minecraft:enchantment_glint_override
tag @s remove teplus.lapis_glint

# Update enchanting table base charge
execute as @e[type=marker,tag=teplus.enchanting_table,distance=...5,sort=nearest,limit=1] at @s run function teplus:blocks/enchanting_table/base_charge/events/return_item/determine_count