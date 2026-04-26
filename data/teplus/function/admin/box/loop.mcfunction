# @Context: Run as the main marker controller

# Check state
execute if block ~ ~ ~ barrel[open=true] run function teplus:admin/box/barrel_open
execute if block ~ ~ ~ barrel[open=false] if entity @s[tag=teplus.admin_box.is_open] run tag @s remove teplus.admin_box.is_open

# Update the score
scoreboard players operation $temp teplus.block_id = @s teplus.block_id

# Prevent stealing from hoppers and hopper minecarts
execute if block ~ ~-1 ~ minecraft:hopper run setblock ~ ~-1 ~ air destroy
# Re-use the same function (from the Technical Anvil) to return a hopper minecart
execute positioned ~ ~-1.01 ~ as @e[type=minecraft:hopper_minecart,dy=1.01] at @s run function teplus:anvil/events/remove_hopper_minecart

# Kill UI items when dropped outside the chest
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{teplus:{ui:1b}}}}},distance=..5]

# Remove if the block is broken (wait one tick for barrel placement)
execute unless block ~ ~ ~ minecraft:barrel if entity @s[tag=teplus.admin_box.set] run function teplus:admin/box/destroy

# Special tag that is added after 1 tick when the barrel is first placed
tag @s[tag=!teplus.admin_box.set] add teplus.admin_box.set