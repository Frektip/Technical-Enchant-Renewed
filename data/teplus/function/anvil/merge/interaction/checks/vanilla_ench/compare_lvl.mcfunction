# Get the level from the enchanted book
$execute store result score #vanplus_current_lvl teplus.data run data get entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:$(ench)

# Store the max vanilla level possible for the enchantment
$scoreboard players set #max_vanilla_lvl teplus.data $(min_lvl_req)

# ONLY if the level from the book is the same or higher than the 
#  max vanilla level possible ----> IS VALID (return 0)
execute if score #vanplus_current_lvl teplus.data >= #max_vanilla_lvl teplus.data run return 0

# Default case return 1 (invalid)
return 1