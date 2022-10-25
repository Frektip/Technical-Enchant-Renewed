data modify storage teplus:item_lore First set value []
data modify storage teplus:item_lore First set from entity @s[tag=is_enchantment] HandItems[0].tag.StoredCustomEnchantments
data modify storage teplus:item_lore First set from entity @s[tag=is_curse] HandItems[0].tag.StoredCustomCurse
tag @s add at_book
tag @s add teplus.loot_1ench

function teplus_exten:chests/create_loot/set_lore/prepare