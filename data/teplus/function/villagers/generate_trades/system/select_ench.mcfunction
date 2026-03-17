# Use 'teplus:loot' storage to use the same function to avoid getting duplicate enchantments

# Copy into a Temp storage the enchantments available
data modify storage teplus:loot Temp set from storage teplus:villagers Result

# Clean the storage, so enchantments don't get dupped
data modify storage teplus:loot Current set value {}
data modify storage teplus:loot Current merge from entity @s Offers.Recipes[1].sell.components.minecraft:stored_enchantments
data modify storage teplus:loot Current merge from entity @s Offers.Recipes[2].sell.components.minecraft:stored_enchantments
data modify storage teplus:loot Current merge from entity @s Offers.Recipes[3].sell.components.minecraft:stored_enchantments
data modify storage teplus:loot Current merge from entity @s Offers.Recipes[4].sell.components.minecraft:stored_enchantments
data modify storage teplus:loot Current merge from entity @s Offers.Recipes[5].sell.components.minecraft:stored_enchantments

execute store result score #size teplus.data run data get storage teplus:loot Current
execute unless score #size teplus.data matches 0 run function #teplus:enchanting/clear_storage

# Preapare RNG based on the Temp storage
scoreboard players set $min teplus.rng 0
execute store result score $max teplus.rng run data get storage teplus:loot Temp
execute unless score $max teplus.rng matches ..0 run scoreboard players remove $max teplus.rng 1
function teplus:utils/random/init

# Loop the enchantments randomly
scoreboard players operation $trade.loop teplus.data = $out teplus.rng
function teplus:villagers/generate_trades/system/random_get