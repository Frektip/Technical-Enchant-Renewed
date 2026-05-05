# This function takes 3 values as arguments to give context to the chest loot generation:
#  {container_type}: 0 is for block type containers (chests, barrels, etc) and 1 is for entity type containers (minecart chests, chest boats)
#  {rolls}: is the amount of times this function will be called, so the chest can have more than 1 enchantment when it is opened
#  {structure}: is the name if the structure that is declared at core/registry.mcfunction (it MUST be de same name)
# With this, the advancement only calls the function and set the parameters to generate correctly the loot for the structure


# Scoreboard context values
$scoreboard players set #teplus.container_type teplus.data $(container_type)
$scoreboard players set #chst.try teplus.data $(rolls)

# Set the name of the structure to find it in the registry list
$data modify storage teplus:chest Struct.Get set value "$(structure)"

#==== Debug info ====##
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Chest loot): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Getting available enchantments for: ","color":"gray","italic":true,"bold":false},{"nbt":"Struct.Get","storage":"teplus:chest","color":"#359966","italic":true,"bold":false}]
tellraw @a[tag=teplus.debug_mode] [{"text":"        Rolls for this structure: ","color":"gray","italic":true,"bold":false},{"score":{"name":"#chst.try","objective":"teplus.data"},"color":"#6c9935","italic":true,"bold":false}]

execute if score #teplus.container_type teplus.data matches 0 run tellraw @a[tag=teplus.debug_mode] [{"text":"        Container type target: ","color":"gray","italic":true,"bold":false},{"text":"block","color":"#6c9935","italic":true,"bold":false}]
execute if score #teplus.container_type teplus.data matches 1 run tellraw @a[tag=teplus.debug_mode] [{"text":"        Container type target: ","color":"gray","italic":true,"bold":false},{"text":"entity","color":"#6c9935","italic":true,"bold":false}]
#======================#

# Run the raycast based on the type
# Blocks
execute if score #teplus.container_type teplus.data matches 0 at @s anchored eyes positioned ^ ^ ^ run function teplus:chests/locate_target/chest_block

# Entities
execute if score #teplus.container_type teplus.data matches 1 run scoreboard players reset .distance teplus.ryc
execute if score #teplus.container_type teplus.data matches 1 at @s anchored eyes positioned ^ ^ ^ run function teplus:chests/locate_target/chest_entity

# Generate a list of all possible enchantments for the specified structure
function teplus:chests/create_loot/define

# Obtain a book from the storage and insert it into the chest
execute at @e[type=marker,tag=teplus.ray,limit=1,sort=nearest] run function teplus:chests/insert_book/init

# Kill the raycast marker
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