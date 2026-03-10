#============================= FAIL BY DEFAULT =============================#
tag @s remove teplus.anvil.CanExtract
function teplus:anvil/extract/menu/change_item/inputs/deactivate_slots

# Update the storage to get the items from both inputs
data modify storage teplus:updates TAE.Inputs.Section1 set from entity @s Items[{Slot:10b}]
data modify storage teplus:updates TAE.Inputs.Section2 set from entity @s Items[{Slot:16b}]

#============================= ENCHANTED ITEM WITH NORMAL BOOKS =============================#


#============================= ENCHANTED ITEM WITH ISOLATED CORE =============================#
