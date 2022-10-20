data remove storage teplus:item_lore DienchLore[0]
data remove entity @s Item.tag.CustomEnchantments[0]
execute if data entity @s Item.tag.CustomEnchantments[0].id run function enchantplus:disenchant/update_lore/loop_items