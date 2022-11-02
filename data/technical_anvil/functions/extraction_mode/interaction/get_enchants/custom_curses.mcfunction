#Remove tag because it isn't extracting vanilla enchantments
tag @s[tag=techanv.vanilla] remove techanv.vanilla

#Clear "FromItem" storage
data modify storage teplus:tech_extract FromItem set value {}

#Copy the first custom curse from the array into an storage
data modify storage teplus:tech_extract FromItem.tag.CustomCurse set from storage teplus:tech_extract CurrentItems[{Slot:10b}].tag.CustomCurse[0]

#Set that enchantment to the enchanted book
data modify storage teplus:tech_extract ResultItem.tag.StoredCustomCurse[] set from storage teplus:tech_extract FromItem.tag.CustomCurse

tag @s add techanv.ext_spl