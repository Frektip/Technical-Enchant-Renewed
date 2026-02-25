# Update the score to match the current enttiy
scoreboard players operation $temp teplus.block_id = @s teplus.block_id

#execute if entity @s[tag=anv.merge,tag=!anv.extract] if entity @p[distance=..5] at @s run function teplus:menu/main

#execute if entity @s[tag=anv.extract,tag=!anv.merge] if entity @p[distance=..5] at @s run function teplus:extraction_mode/menu/main

##Prevent stealing from hoppers and hopper minecarts
#execute if block ~ ~-1 ~ hopper run data remove block ~ ~-1 ~ Items[{tag:{Teplus:{ui:1b}}}]
#execute as @e[type=hopper_minecart,distance=..2] run data remove entity @s Items[{tag:{Teplus:{ui:1b}}}]

# Kill UI items when dropped
#kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{teplus:{ui:1b}}}}},distance=..5]

# Remove if the block is broken (wait one tick for minecart placement)
execute unless block ~ ~ ~ minecraft:deepslate_tile_slab if entity @s[tag=teplus.technical_anvil.set] run function teplus:anvil/events/destroy

#tag @s[tag=!anv.extract,tag=!anv.merge] add anv.merge

# Special tag that is added after 1 tick when the minecart is first placed
tag @s[tag=!teplus.technical_anvil.set] add teplus.technical_anvil.set