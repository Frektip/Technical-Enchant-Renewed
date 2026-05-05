###################################################
# >@Context: running as the item frame with the 
#            item that we're trying to enchant
###################################################

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
execute if predicate teplus:item/type/is_trident run return run tag @s add teplus.loot_trident
execute if predicate teplus:item/type/is_shield run return run tag @s add teplus.loot_shield
execute if predicate teplus:item/type/is_bow run return run tag @s add teplus.loot_bow
execute if predicate teplus:item/type/is_crossbow run return run tag @s add teplus.loot_crossbow