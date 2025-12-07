# Store all the enchantments of the item in "teplus:temp getench.all"
execute if entity @s[tag=teplus.loot_is_book] run data modify storage teplus:temp getench.all set from entity @s Item.components.minecraft:stored_enchantments
execute if entity @s[tag=teplus.loot_is_item] run data modify storage teplus:temp getench.all set from entity @s Item.components.minecraft:enchantments

function teplus:utils/get_enchantments/init


# Get how many custom enchantments are on the item, ONLY custom enchantments 
execute store result score #size teplus.data run data get storage teplus:temp getench.custom

# Clear storages
data remove storage teplus:temp getench

# Keep it at 3 or 2 enchantments maximum for books & items based on the tier 
execute if score #teplus.rarity teplus.data matches 3 unless score #size temp matches 3 run function teplus:enchant/set_enchant/core
execute if score #teplus.rarity teplus.data matches 2 unless score #size temp matches 2 run function teplus:enchant/set_enchant/core