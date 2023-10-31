#Scoreboard debug values
scoreboard players set #teplus.container_type teplus.data 0
scoreboard players set #chst.try teplus.data 2

#Run the raycast
execute at @s anchored eyes positioned ^ ^ ^ run function teplus_exten:chests/raycast_chest

#Set the name of the structure to find it in the registry list
data modify storage teplus:chest Struct.Get set value "minecraft:ancient_city"

#Generate a list of all possible enchantments for this structure
function teplus_exten:chests/create_loot/define

execute at @e[type=marker,tag=teplus.ray,limit=1,sort=nearest] run function teplus_exten:chests/insert_book

kill @e[type=marker,tag=teplus.ray,limit=1,sort=nearest]

#Reset scores and storage
scoreboard players reset #teplus.container_type teplus.data
scoreboard players reset #chst.try teplus.data
data remove storage teplus:chest Result

#Grant the advancement
advancement grant @s[advancements={enchantplus:progress/start/extensions/chest_loot=false}] only enchantplus:progress/start/extensions/chest_loot