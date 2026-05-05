###################################################
# >@Context: running as the item frame with the 
#            item that we're trying to enchant
###################################################

### Debug Message ###
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Enchanting for an ","color":"gray","italic":true,"bold":false}, {"text":"[ITEM]","color":"#4840af","italic":true,"bold":false}]

# Give a Global tag if it is an item
tag @s add teplus.loot_is_item

# Add tag, this will help selecting from the enchantment list
# This function tag calls --> teplus:enchant/item/placeholder/get_type.mcfunction
function #teplus:enchanting/items/item_type