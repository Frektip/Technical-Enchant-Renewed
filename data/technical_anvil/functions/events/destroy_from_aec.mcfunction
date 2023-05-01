#Update the score
scoreboard players operation $techanv teplus.block_id = @s teplus.block_id

kill @e[type=item,nbt={Item:{id:"minecraft:deepslate_tile_slab"}}, distance=..1] 
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:chest_minecart",Count:1b}}]
kill @e[type=item,nbt={Item:{tag:{Teplus:{ui:1b}}}}]
setblock ~ ~1 ~ air
kill @e[type=#technical_anvil:is_decorative,tag=teplus.techanvdec,predicate=technical_anvil:block_id_match,distance=..10]

execute unless entity @p[gamemode=creative,distance=..6] run loot spawn ~ ~ ~ loot enchantplus:technical_anvil

kill @s 