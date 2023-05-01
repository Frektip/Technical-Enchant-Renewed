#Update the score
scoreboard players operation $techanv teplus.block_id = @s teplus.block_id

execute if entity @s[tag=anv.merge,tag=!anv.extract] if entity @p[distance=..5] at @s run function technical_anvil:menu/main

execute if entity @s[tag=anv.extract,tag=!anv.merge] if entity @p[distance=..5] at @s run function technical_anvil:extraction_mode/menu/main

##Prevent stealing from hoppers and hopper minecarts
execute if block ~ ~-1 ~ hopper run data remove block ~ ~-1 ~ Items[{tag:{Teplus:{ui:1b}}}]
execute as @e[type=hopper_minecart,distance=..2] run data remove entity @s Items[{tag:{Teplus:{ui:1b}}}]

#Kill UI items when dropped
kill @e[type=item,nbt={Item:{tag:{Teplus:{ui:1b}}}},distance=..5]

# Remove if the block is broken (wait one tick for minecart placement)
execute unless block ~ ~ ~ deepslate_tile_slab if entity @s[tag=tcha_set] run function technical_anvil:events/destroy
execute unless block ~ ~ ~ deepslate_tile_slab if entity @s[tag=tcha_set] run kill @e[type=item,nbt={Item:{tag:{Teplus:{ui:1b}}}}]

tag @s[tag=!anv.extract,tag=!anv.merge] add anv.merge
tag @s[tag=!tcha_set] add tcha_set

