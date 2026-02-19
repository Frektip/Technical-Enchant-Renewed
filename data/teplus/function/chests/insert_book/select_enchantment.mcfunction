#====================================================================================#
#> @Context: The current entity is the Dummy Armor Stand inside the container (chest)
#====================================================================================#

# Copy into a Temp storage the enchantments available
data modify storage teplus:chest Temp set from storage teplus:chest Result

# Preapare RNG based on the Temp storage
scoreboard players set $min teplus.rng 0
execute store result score $max teplus.rng run data get storage teplus:chest Temp
execute unless score $max teplus.rng matches ..0 run scoreboard players remove $max teplus.rng 1
function teplus:utils/random/init

# Loop the enchantments randomly
scoreboard players operation $chest.loop teplus.data = $out teplus.rng
function teplus:chests/insert_book/get_random_from_storage

# Format the selected enchantment (Temp[0]) to a compound ---> Store the value in "teplus:temp singlenchobj" storage
function teplus:utils/ench_to_single_obj with storage teplus:chest Temp[0]

# Add the enchantment to the component in the armorstand
data modify entity @s equipment.mainhand.components.minecraft:stored_enchantments merge from storage teplus:temp singlenchobj

# Clear the storages
data remove storage teplus:chest Temp
data remove storage teplus:chest Copy
data remove storage teplus:chest Build
data remove storage teplus:temp singlenchobj

# Insert the book into the chest or chest_minecart
execute if score #teplus.container_type teplus.data matches 0 run function teplus:chests/insert_book/in_block
execute if score #teplus.container_type teplus.data matches 1 run function teplus:chests/insert_book/in_entity

kill @s