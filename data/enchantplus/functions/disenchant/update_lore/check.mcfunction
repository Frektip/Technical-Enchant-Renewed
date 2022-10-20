#   -Keep the original Lore before removing it in a storage
data modify storage teplus:item_lore DienchLore set from entity @s Item.tag.display.Lore
#   -Run a function to remove all Custom Enchantments and Curses related Lore
execute if entity @s[tag=as_book] run function enchantplus:disenchant/update_lore/loop_book
execute if entity @s[tag=as_item] run function enchantplus:disenchant/update_lore/loop_items
#   -Remove all the item's Lore
data remove entity @s Item.tag.display.Lore
#   -In case the Item has anther custom Lore, append it from the "DienchLore" storage
data modify entity @s Item.tag.display.Lore append from storage teplus:item_lore DienchLore[]