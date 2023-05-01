kill @e[type=item,nbt={Item:{id:"minecraft:deepslate_tile_slab"}}, distance=..1] 

setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=teplus.technical_anvil_aec,predicate=technical_anvil:block_id_match,distance=..10]
kill @e[type=#technical_anvil:is_decorative,tag=teplus.techanvdec,predicate=technical_anvil:block_id_match,distance=..10]

execute unless entity @p[gamemode=creative,distance=..6] run loot spawn ~ ~ ~ loot enchantplus:technical_anvil

kill @s
