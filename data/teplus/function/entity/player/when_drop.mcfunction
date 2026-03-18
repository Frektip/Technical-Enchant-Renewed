##-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#

# Check if it throw a Page of Power item on top of an enchanting table
execute as @e[type=item,limit=1,sort=nearest,distance=..10,nbt={Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{teplus:{id:"page_of_power"}}}}}] at @s if entity @e[type=marker,tag=teplus.enchanting_table,tag=teplus.tier4,distance=..1] run function teplus:enchant/convert_power_page

# Check if it throw an enchantable item on top of an enchanting table
execute store result score @s[gamemode=!creative] teplus.player.xp run xp query @s levels
execute if entity @s[gamemode=!creative,scores={teplus.player.xp=1..}] as @e[type=item,distance=..10] if predicate teplus:item/is_enchantable at @s run function teplus:enchant/init
execute if entity @s[gamemode=creative] as @e[type=item,distance=..10] if predicate teplus:item/is_enchantable at @s run function teplus:enchant/init