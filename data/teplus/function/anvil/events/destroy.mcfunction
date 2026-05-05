# @Context: this function is executed when the player destroys the slab near the minecart

setblock ~ ~ ~ air

# Remove vanilla related items
kill @e[type=item,nbt={Item:{id:"minecraft:deepslate_tile_slab"}}, distance=..1]

# Remove decoration
kill @e[type=area_effect_cloud,tag=teplus.aec,predicate=teplus:block_id_match,distance=..10]
kill @e[type=#teplus:types/decorative,tag=teplus.techanvdec,predicate=teplus:block_id_match,distance=..10]

# Spawn technical anvil item in survival ONLY
execute unless entity @p[gamemode=creative,distance=..6] run loot spawn ~ ~ ~ loot teplus:items/technical_anvil

# Kill the chest minecart
kill @s

# Kill UI items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{teplus:{ui:1b}}}}}]