# Remove all the Lore and update just the custom enchantment part
data remove entity @s Items[{Slot:10b}].tag.display.Lore
function #technical_anvil:extraction_mode/refresh_enchantments

# In case the Item has anther custom Lore, append it from the "ExtractLore" storage from earlyer
data modify entity @s Items[{Slot:10b}].tag.display.Lore append from storage teplus:item_lore ExtractLore[]
