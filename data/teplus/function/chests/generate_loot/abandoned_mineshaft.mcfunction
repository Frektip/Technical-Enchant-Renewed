# Scoreboard debug values
scoreboard players set #teplus.container_type teplus.data 1
scoreboard players set #chst.try teplus.data 1

# Run the raycast
scoreboard players reset .distance teplus.ryc
execute at @s anchored eyes positioned ^ ^ ^ run function teplus:chests/locate_target/raycast/chest_entity

# Set the name of the structure to find it in the registry list
data modify storage teplus:chest Struct.Get set value "minecraft:mineshaft"

# Generate a list of all possible enchantments for this structure
function teplus:chests/create_loot/define

execute at @e[type=marker,tag=teplus.ray,limit=1,sort=nearest] run function teplus:chests/insert_book/init

kill @e[type=marker,tag=teplus.ray,limit=1,sort=nearest]

# Reset scores
scoreboard players reset #teplus.container_type teplus.data
scoreboard players reset #chst.try teplus.data

# Clear the storages
data remove storage teplus:chest Result
data remove storage teplus:chest Temp
data remove storage teplus:chest Copy
data remove storage teplus:chest Build
data remove storage teplus:temp singlenchobj

#Grant the advancement
#advancement grant @s[advancements={enchantplus:progress/start/extensions/chest_loot=false}] only enchantplus:progress/start/extensions/chest_loot