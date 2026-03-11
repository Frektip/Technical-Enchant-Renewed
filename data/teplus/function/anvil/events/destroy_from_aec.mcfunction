# @Context: this function is executed when the player destroys the minecart (creative) from the area effect cloud

# Update the score to match the current entity
scoreboard players operation $temp teplus.block_id = @s teplus.block_id

# Remove vanilla related items
kill @e[type=item,nbt={Item:{id:"minecraft:deepslate_tile_slab"}}, distance=..1] 
kill @e[type=item,nbt={Item:{id:"minecraft:chest_minecart",count:1}},distance=..1]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{teplus:{ui:1b}}}}}]
setblock ~ ~1 ~ air

# Remove decoration
kill @e[type=#teplus:types/decorative,tag=teplus.techanvdec,predicate=teplus:block_id_match,distance=..10]

# Spawn technical anvil item in survival ONLY
execute unless entity @p[gamemode=creative,distance=..6] run loot spawn ~ ~ ~ loot teplus:items/technical_anvil

# Kill the aec
kill @s