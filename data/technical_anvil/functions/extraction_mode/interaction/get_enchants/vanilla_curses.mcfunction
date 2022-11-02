#Tag to get recognized
tag @s add techanv.vanilla

#Clear "FromItem" storage
data modify storage teplus:tech_extract FromItem set value {}

#Detect vanilla curses ONLY
execute if data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run data modify storage teplus:tech_extract FromItem.tag.Curse set value [{id:"minecraft:binding_curse",lvl:1s}]
execute if data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.Enchantments[{id:"minecraft:vanishing_curse"}] run data modify storage teplus:tech_extract FromItem.tag.Curse set value [{id:"minecraft:vanishing_curse",lvl:1s}]

#Set that enchantment curse to the enchanted book
data modify storage teplus:tech_extract ResultItem.tag.StoredEnchantments set from storage teplus:tech_extract FromItem.tag.Curse

tag @s add techanv.ext_spl