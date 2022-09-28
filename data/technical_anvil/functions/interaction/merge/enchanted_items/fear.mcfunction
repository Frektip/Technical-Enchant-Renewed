#Remove ComError tag, because is a compatible enchantment
tag @s remove ComError
#Just check if the ResultItem doesn't have this enchantment, so the tag is added
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomCurse[{id:"Fear"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomCurse append value {id:"Fear",lvl:1}
#Apply CustomArrow nbt tag, so the game recognizes this 
# enchanted bow/crossbow, use reference GROUPS to do it
execute if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"BOW"}}}} run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomArrow set value 1
execute if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"CROSSBOW"}}}} run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomArrow set value 1
tag @s add CEitm