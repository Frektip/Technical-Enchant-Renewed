#50% chance to remove other Custom Enchantments
execute if predicate enchantplus:random_chance/50 run data remove entity @s Item.tag.StoredCustomEnchantments
function enchantplus:loot/enchanting/curse_book