kill @e[type=item,nbt={Item:{id:"minecraft:deepslate_tile_slab"}}, distance=..1] 
kill @e[tag=teplus.technical_anvil_decorative, distance=..1] 
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:chest_minecart",Count:1b}}]

setblock ~ ~ ~ air

execute unless entity @p[gamemode=creative,distance=..6] run loot spawn ~ ~ ~ loot enchantplus:technical_anvil

kill @s
