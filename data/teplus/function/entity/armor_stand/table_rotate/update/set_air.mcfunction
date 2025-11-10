item replace entity @s armor.head with air
tag @s remove teplus.lapis_visible

# Update enchanting table base charge
execute as @e[type=marker,tag=teplus.enchanting_table,distance=...5,sort=nearest,limit=1] at @s run function teplus:blocks/enchanting_table/base_charge/events/return_item/determine_count