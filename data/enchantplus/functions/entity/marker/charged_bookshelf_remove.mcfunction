#Kill any items, like the bookshelf, books or planks
kill @e[type=item,distance=..1]

#Give back the charged bookshelf to the player only if he is in survival
execute unless entity @p[gamemode=creative] run loot spawn ~ ~ ~ loot enchantplus:charged_bookshelf
kill @s