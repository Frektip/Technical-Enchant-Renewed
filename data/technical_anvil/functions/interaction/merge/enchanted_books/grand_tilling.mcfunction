#Just check if the ResultItem doesn't have this enchantment, so the tag is added
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[{id:"GrandTilling"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments append value {id:"GrandTilling",lvl:1}
tag @s add CEnchApply