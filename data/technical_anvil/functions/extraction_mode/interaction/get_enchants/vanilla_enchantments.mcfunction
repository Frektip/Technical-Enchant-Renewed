#Tag to get recognized
tag @s add techanv.vanilla

#Clear "FromItem" storage
data modify storage teplus:tech_extract FromItem set value {}

#Copy the first enchantment from the array into an storage
data modify storage teplus:tech_extract FromItem.tag.Enchantments[] set from storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.Enchantments[0]

#Do something in case the enchantment is a curse
execute if data storage teplus:tech_extract FromItem.tag.Enchantments[{id:"minecraft:binding_curse"}] run function technical_anvil:extraction_mode/interaction/get_enchants/vancurse_debug
execute if data storage teplus:tech_extract FromItem.tag.Enchantments[{id:"minecraft:vanishing_curse"}] run function technical_anvil:extraction_mode/interaction/get_enchants/vancurse_debug

#Set that enchantment to the enchanted book
execute unless entity @s[tag=teplus.vancurse_limit] run data modify storage teplus:tech_extract ResultItem.tag.StoredEnchantments set from storage teplus:tech_extract FromItem.tag.Enchantments

#Add "MaxEnch:1b" nbt tag in case the item has an exceeded enchantment
execute if data storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.MaxEnch run data modify storage teplus:tech_extract ResultItem.tag.MaxEnch set value 1b