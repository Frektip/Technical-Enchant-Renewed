# @Context: We run this function as a an entitiy with some type of container (i.e: Item Frame or Chest)
# Because of this, we need to supply the following @params:
#  - {path}: The path to the item we want to check the enchantments from
#  - {slot}: The slot where the item is located MUST be the same as the {path}

# Obtain the current enchantments stored in the book as an Array
# Use the utility function to convert the enchantment object into a list
$data modify storage teplus:temp enchobj set from entity @s $(path).components.minecraft:stored_enchantments
function teplus:utils/ench_to_list/init

# Copy the result list in another storage
data modify storage teplus:lore Enchants set from storage teplus:temp enchlist

# Modify the lore only if there is one enchantment in the book
$execute unless data storage teplus:lore Enchants[1] run function #teplus:set_book_desc {slot: "$(slot)"}

# Clear storages
data remove storage teplus:temp enchlist
data remove storage teplus:temp enchobj
data remove storage teplus:lore Enchants