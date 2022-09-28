#Remove ComError tag, because is a compatible enchantment
tag @s remove ComError
#Just check if the ResultItem doesn't have this enchantment, so the tag is added
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomCurse[{id:"Sensitive"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomCurse append value {id:"Sensitive",lvl:1}
tag @s add CEitm