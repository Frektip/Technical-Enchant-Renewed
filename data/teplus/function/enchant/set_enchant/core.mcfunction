### Debug Message ###
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Setting an storage depending on all available custom enchantments","color":"gray","italic":true,"bold":false}]

# Prepare the storage that will select enchantments, including levels
function teplus:enchant/set_enchant/get_enchantments

# Copy into a Temp storage the enchantments available
data modify storage teplus:loot Temp set from storage teplus:loot Enchantments

# Clean the storage, so enchantments don't get dupped
data modify storage teplus:loot Current set from entity @s[tag=teplus.loot_is_book] Item.components.minecraft:stored_enchantments
data modify storage teplus:loot Current set from entity @s[tag=teplus.loot_is_item] Item.components.minecraft:enchantments

execute store result score #size teplus.data run data get storage teplus:loot Current
execute unless score #size teplus.data matches 0 run function #teplus:enchanting/clear_storage

# Preapare RNG based on the Temp storage
scoreboard players set $min teplus.rng 0
execute store result score $max teplus.rng run data get storage teplus:loot Temp
execute unless score $max teplus.rng matches ..0 run scoreboard players remove $max teplus.rng 1
function teplus:utils/random/init

# Loop the enchantments randomly
scoreboard players operation $ench.loop teplus.data = $out teplus.rng
function teplus:enchant/set_enchant/loop_ench

tellraw @a[tag=teplus.debug_mode] [{"text":"Target enchant: ","color":"gold","bold":false},{"nbt":"Temp[0].id","storage":"teplus:loot","color":"#4dbb9e","italic":true,"bold":false}]

# Get the Base Charge to be removed
function teplus:enchant/calculate_base_charge

# Set the rarirty from the storage
execute store result score #enchant.rarity teplus.data run data get storage teplus:loot Temp[0].Rarity
data remove storage teplus:loot Temp[].Rarity
data remove storage teplus:loot Temp[].Charge

# Add the nbt tag enchant the item based on Temp Storage
# But check first if there is incompatibilities for Items Only
execute if data entity @s[tag=teplus.loot_is_item] Item.components.minecraft:enchantments if data storage teplus:loot Temp[0].Incompatible run function teplus:enchant/check_incompatible/init

# Remove the "Incompatible" nbt from the storage 
# (this is in case the item doesn't have any incompatible enchantment, therefore it needs to continue to add that enchantment to the main item)
data remove storage teplus:loot Temp[].Incompatible

# Format the selected enchantment (Temp[0]) to a compound ---> Store the value in "teplus:temp singlenchobj" storage
function teplus:utils/ench_to_single_obj with storage teplus:loot Temp[0]

# Add the enchantment to the component
data modify entity @s[tag=teplus.loot_is_book] Item.components.minecraft:stored_enchantments merge from storage teplus:temp singlenchobj
data modify entity @s[tag=teplus.loot_is_item] Item.components.minecraft:enchantments merge from storage teplus:temp singlenchobj

# Clear the storages
data remove storage teplus:loot Enchantments
data remove storage teplus:loot Temp
data remove storage teplus:loot Copy
data remove storage teplus:loot Build
data remove storage teplus:loot Current
data remove storage teplus:loot Incomp
data remove storage teplus:temp singlenchobj

# Add another enchantment again acording the enchanting setup & Tier
execute if score #teplus.rarity teplus.data matches 3 if predicate teplus:random_chance/15 run function teplus:enchant/set_enchant/add_extra_enchant

execute if score #teplus.rarity teplus.data matches 2 if predicate teplus:random_chance/5 run function teplus:enchant/set_enchant/add_extra_enchant