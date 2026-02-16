###################################################
# >@Context: running as the item frame with the 
#            item that we're trying to enchant
###################################################

# Give a Global tag if it is an item
tag @s add teplus.loot_is_item

# Check for every enchantmentable item by type and add a tag
execute if predicate teplus:item/type/is_helmet run return run tag @s add teplus.loot_helmet
execute if predicate teplus:item/type/is_chestplate run return run tag @s add teplus.loot_chestplate
execute if predicate teplus:item/type/is_leggings run tag @s add teplus.loot_leggings
execute if predicate teplus:item/type/is_boots run return run tag @s add teplus.loot_boots
execute if predicate teplus:item/type/is_sword run return run tag @s add teplus.loot_sword
execute if predicate teplus:item/type/is_axe run return run tag @s add teplus.loot_axe
execute if predicate teplus:item/type/is_pickaxe run return run tag @s add teplus.loot_pickaxe
execute if predicate teplus:item/type/is_shovel run return run tag @s add teplus.loot_shovel
execute if predicate teplus:item/type/is_hoe run return run tag @s add teplus.loot_hoe
execute if data entity @s {Item:{id:"minecraft:trident"}} run return run tag @s add teplus.loot_trident
execute if data entity @s {Item:{id:"minecraft:shield"}} run return run tag @s add teplus.loot_shield
execute if data entity @s {Item:{id:"minecraft:bow"}} run return run tag @s add teplus.loot_bow
execute if data entity @s {Item:{id:"minecraft:crossbow"}} run return run tag @s add teplus.loot_crossbow