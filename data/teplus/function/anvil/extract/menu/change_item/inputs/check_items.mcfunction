#============================= FAIL BY DEFAULT =============================#
tag @s remove teplus.anvil.CanExtract
function teplus:anvil/extract/menu/change_item/inputs/deactivate_slots

# Update the storage to get the items from both inputs
data modify storage teplus:updates TAE.Inputs.Section1 set from entity @s Items[{Slot:10b}]
data modify storage teplus:updates TAE.Inputs.Section2 set from entity @s Items[{Slot:16b}]

#============================= ENCHANTED ITEM WITH NORMAL BOOKS =============================#
execute if score #extrmd teplus.game_opts matches 0 if data entity @s Items[{Slot:10b}].components.minecraft:enchantments if data storage teplus:updates {TAE:{Inputs:{Section2:{id:"minecraft:book"}}}} run function teplus:anvil/extract/menu/change_item/inputs/has_valid_inputs


#============================= ENCHANTED ITEM WITH ISOLATED CORE =============================#
