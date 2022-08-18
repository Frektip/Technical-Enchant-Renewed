#First checks if it throw a bookshelf on top of an enchanting table
execute if entity @s[scores={Drop=1..}] at @s as @e[type=item,distance=..10,nbt={Item:{id:"minecraft:bookshelf",Count:1b}}] at @s run function enchantplus:enchanting_table/charged_bookshelf/get/from_player
#Also checks is it throw an undamaged anvil on top of an enchanting table
execute if entity @s[scores={Drop=1..}] at @s as @e[type=item,distance=..10,nbt={Item:{id:"minecraft:anvil",Count:1b}}] at @s run function enchantplus:enchanting_table/technical_anvil/get/from_player

#Checks if it throw an item on top of an enchanting table
execute if entity @s[gamemode=!creative,level=10..,scores={Drop=1..}] as @e[type=item,distance=..10] at @s run function enchantplus:loot/enchant_ini
execute if entity @s[gamemode=creative,scores={Drop=1..}] as @e[type=item,distance=..10] at @s run function enchantplus:loot/enchant_ini_creative