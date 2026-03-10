# Update the score to match the current enttiy
scoreboard players operation $temp teplus.block_id = @s teplus.block_id

execute if entity @s[tag=teplus.anvil.merge,tag=!teplus.anvil.extract] if entity @p[distance=..5] at @s run function teplus:anvil/merge/menu/main

execute if entity @s[tag=teplus.anvil.extract,tag=!teplus.anvil.merge] if entity @p[distance=..5] at @s run function teplus:anvil/extract/menu/main

# Prevent stealing from hoppers and hopper minecarts
execute if block ~ ~-1 ~ minecraft:hopper run setblock ~ ~-1 ~ air destroy
execute positioned ~ ~-1.01 ~ as @e[type=minecraft:hopper_minecart,dy=1.01] at @s run function teplus:anvil/events/remove_hopper_minecart

# Kill UI items when dropped outside the chest
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{teplus:{ui:1b}}}}},distance=..5]

# Remove if the block is broken (wait one tick for minecart placement)
execute unless block ~ ~ ~ minecraft:deepslate_tile_slab if entity @s[tag=teplus.technical_anvil.set] run function teplus:anvil/events/destroy

# Add by default the "Merge" related tag to display the merge mode UI
tag @s[tag=!teplus.anvil.extract,tag=!teplus.anvil.merge] add teplus.anvil.merge

# Special tag that is added after 1 tick when the minecart is first placed
tag @s[tag=!teplus.technical_anvil.set] add teplus.technical_anvil.set