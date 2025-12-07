data modify storage teplus:loot Incomp.Source set from storage teplus:loot Temp[0].Incompatible

# Convert the enchantment object into a list
data modify storage teplus:temp enchobj set from entity @s Item.components.minecraft:enchantments
function teplus:utils/ench_to_list/init

# Get the list of enchantments and format them
data modify storage teplus:loot Incomp.With set from storage teplus:temp enchlist
data remove storage teplus:loot Incomp.With[].lvl

function teplus:enchant/check_incompatible/compare

# Clear storages
data remove storage teplus:temp enchlist
data remove storage teplus:temp enchobj

# In case it fails and it has more than one incompatible enchantment run it again, until the Incompatible nbt has been fully covered
data remove storage teplus:loot Temp[0].Incompatible[0]
execute if data storage teplus:loot Temp[0].Incompatible[0].id run function teplus:enchant/check_incompatible/init