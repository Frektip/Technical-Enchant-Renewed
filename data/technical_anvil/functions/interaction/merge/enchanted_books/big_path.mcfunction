#Just check if the ResultItem doesn't have this enchantment, so the tag is added
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[{id:"BigPath"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments append value {id:"BigPath",lvl:1}
tag @s add CEnchApply