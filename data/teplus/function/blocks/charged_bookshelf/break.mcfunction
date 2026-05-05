scoreboard players operation $temp teplus.block_id = @s teplus.block_id

#Kill any items, like the bookshelf, books or planks
execute align xyz run kill @e[type=item,nbt=!{Item:{components:{"minecraft:custom_data":{teplus:{id:"charged_bookshelf"}}}},Age:0s},dx=0]

#Kill item display related entity
kill @e[type=item_display,tag=teplus.visual_bookshelf,predicate=teplus:block_id_match,distance=..2]

#Give back the charged bookshelf to the player except in creative mode
execute unless entity @p[gamemode=creative] run loot spawn ~ ~ ~ loot teplus:items/charged_bookshelf
kill @s