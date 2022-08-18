#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR SHIELD-------------#
execute if score #atkb Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"AntiKnockback"}] run function technical_anvil:interaction/merge/item_with_book/anti_knockback
execute if score #hdns Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"HardnessPlus"}] run function technical_anvil:interaction/merge/item_with_book/hardness_plus
execute if score #pks Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"Peaks"}] run function technical_anvil:interaction/merge/item_with_book/peaks
execute if score #trsf Enchopts matches 0 if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"TurtleStiffness"}] run function technical_anvil:interaction/merge/item_with_book/turtle_stiffness

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_sensitive