# Copy from the Register Storage
data modify storage teplus:loot Copy set value []
execute if data entity @s Item.components.minecraft:custom_data.teplus{rarity: "strong"} run data modify storage teplus:loot Copy append from storage teplus:register Custom[].Enchantment[].Strong[]
execute if data entity @s Item.components.minecraft:custom_data.teplus{rarity: "average"} run data modify storage teplus:loot Copy append from storage teplus:register Custom[].Enchantment[].Average[]
execute if data entity @s Item.components.minecraft:custom_data.teplus{rarity: "low"} run data modify storage teplus:loot Copy append from storage teplus:register Custom[].Enchantment[].Low[]
execute if data entity @s Item.components.minecraft:custom_data.teplus{rarity: "curse"} run data modify storage teplus:loot Copy append from storage teplus:register Custom[].Curse[]

# Remove uneccessary data
data remove storage teplus:loot Copy[].Sell
data remove storage teplus:loot Copy[].ForItem
data remove storage teplus:loot Copy[].Rarity
data remove storage teplus:loot Copy[].Structure
data remove storage teplus:loot Copy[].Incompatible
data remove storage teplus:loot Copy[].Charge

# Cicle though the array
function teplus:drops/item_generated/get_enchantment/loop_build

# Remove Enabled data
data remove storage teplus:loot Enchantments[].Enabled

# Copy into a Temp storage the enchantments available
data modify storage teplus:loot Temp set from storage teplus:loot Enchantments

# Preapare RNG based on the Temp storage
scoreboard players set $min teplus.rng 0
execute store result score $max teplus.rng run data get storage teplus:loot Temp
execute unless score $max teplus.rng matches ..0 run scoreboard players remove $max teplus.rng 1
function teplus:utils/random/init

# Loop the enchantments randomly
scoreboard players operation $ench.loop teplus.data = $out teplus.rng
# Reuse the same "lopp_ench" function when using the enchanting table
function teplus:enchant/set_enchant/loop_ench

# Format the selected enchantment (Temp[0]) to a compound ---> Store the value in "teplus:temp singlenchobj" storage
function teplus:utils/ench_to_single_obj with storage teplus:loot Temp[0]
data modify storage teplus:temp targetench set from storage teplus:temp singlenchobj

# Spawn the new enchantment based on the storage
# calls ---> teplus:drops/item_generated/get_enchantment/set_book.mcfunction
function #teplus:extra/loot_enchanted_book

# Clear the storages
data remove storage teplus:loot Enchantments
data remove storage teplus:loot Temp
data remove storage teplus:loot Copy
data remove storage teplus:loot Build
data remove storage teplus:temp singlenchobj
data remove storage teplus:temp targetench

# Kill the stone button Item
playsound minecraft:entity.player.levelup ambient @a[distance=..5] ~ ~ ~ 5 1.3
particle totem_of_undying ~ ~ ~ 0 0 0 0.3 25
kill @s