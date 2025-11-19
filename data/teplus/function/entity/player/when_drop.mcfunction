##-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#
# Check if it throw an item on top of an enchanting table
execute store result score @s[gamemode=!creative] teplus.player.xp run xp query @s levels
execute if entity @s[gamemode=!creative,scores={teplus.player.xp=1..}] as @e[type=item,distance=..10] if predicate teplus:item/is_enchantable run function teplus:enchant/init
execute if entity @s[gamemode=creative] as @e[type=item,distance=..10] if predicate teplus:item/is_enchantable run function teplus:enchant/init