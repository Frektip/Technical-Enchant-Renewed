#Remove previous tag
tag @s remove teplus.get_ench1

#Check if the item has another enchantment to store
execute store success score @s teplus.data run data get entity @s Items[{Slot:10b}].tag.Enchantments[2]

#Add an error tag in case there are no more enchantments left
execute if score @s teplus.data matches 0 run tag @s add teplus.vancurse_limit

#In case it has another enchantment available - give a tag
execute if score @s teplus.data matches 1 run tag @s add teplus.get_ench2
execute if score @s[tag=teplus.get_ench2] teplus.data matches 1 run data modify storage teplus:tech_extract FromItem.tag.Enchantments[] set from storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.Enchantments[2]
