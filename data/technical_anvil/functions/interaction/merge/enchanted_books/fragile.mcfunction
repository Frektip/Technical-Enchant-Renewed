#Just check if the ResultItem doesn't have this curse, so the tag is added
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomCurse[{id:"Fragile"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomCurse append value {id:"Fragile",lvl:1}
tag @s add CurseApply