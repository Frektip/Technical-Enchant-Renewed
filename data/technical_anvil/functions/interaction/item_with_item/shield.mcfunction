#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR SHIELD-------------#
execute if score #atkb Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"AntiKnockback"}] run function technical_anvil:interaction/merge/item_with_item/anti_knockback
execute if score #hdns Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"HardnessPlus"}] run function technical_anvil:interaction/merge/item_with_item/hardness_plus
execute if score #pks Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Peaks"}] run function technical_anvil:interaction/merge/item_with_item/peaks
execute if score #trsf Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"TurtleStiffness"}] run function technical_anvil:interaction/merge/item_with_item/turtle_stiffness

#-------------SHARED ENCHANTMENTS-------------#

function technical_anvil:interaction/item_with_item/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_with_item/shared_enchantments/shared_sensitive