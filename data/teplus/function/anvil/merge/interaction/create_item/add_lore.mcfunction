# We need to verify if the enchanted book has ONLY one enchantment, so the custom lore description is maintained

# Remove the current lore (if any) by default 
data remove entity @s Items[{Slot:22b}].components.minecraft:lore

# Re-add page of power lore (check for the tag)
item modify entity @s[tag=teplus.anvil.output_page] container.22 teplus:misc/set_page_of_power_lore

# Use the utility function to set (or not) the enchantment lore description into the output Slot
function teplus:utils/set_book_lore/check_enchants {path:"Items[{Slot:22b}]",slot:"container.22"}