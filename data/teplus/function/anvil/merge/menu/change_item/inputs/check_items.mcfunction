#============================= FAIL BY DEFAULT =============================#
tag @s remove teplus.anvil.CanCombine
function teplus:anvil/merge/menu/change_item/inputs/deactivate_slots

# Update the storage to get the items from both inputs
data modify storage teplus:updates TAM.Inputs.Section1 set from entity @s Items[{Slot:2b}]
data modify storage teplus:updates TAM.Inputs.Section2 set from entity @s Items[{Slot:6b}]