##-----#-----#-----#-----# Disenchanting System #-----#-----#-----#-----#-----#
#Separated from the rest due to some things:
# -Tell the difference between Custom and Vanilla enchantments
# -Not remove Custom and Vanilla curses
execute if score #diench game.Opts matches 0 as @e[type=item,distance=..3,nbt={Item:{tag:{CustomEnchantments:[{}]}}},limit=1] at @s if block ~ ~-1 ~ grindstone run function enchantplus:disenchant/core
##-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#
#Get the Guide Book
execute as @e[nbt={Item:{id:"minecraft:writable_book"}},sort=nearest,limit=1] at @s if block ~ ~-.5 ~ enchanting_table run function enchantplus:give/guide_book

#First checks if it throw a bookshelf on top of an enchanting table
execute as @e[type=item,distance=..10,nbt={Item:{id:"minecraft:bookshelf",Count:1b}}] at @s run function enchantplus:enchanting_table/charged_bookshelf/get/from_player
#Also checks is it throw an undamaged anvil on top of an enchanting table
execute as @e[type=item,distance=..10,nbt={Item:{id:"minecraft:anvil",Count:1b}}] at @s run function enchantplus:enchanting_table/technical_anvil/get/from_player

#Checks if it throw an item on top of an enchanting table
execute if entity @s[gamemode=!creative,level=10..] as @e[type=item,distance=..10] at @s run function enchantplus:loot/enchant_ini
execute if entity @s[gamemode=creative] as @e[type=item,distance=..10] at @s run function enchantplus:loot/enchant_ini_creative