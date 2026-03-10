#============================= FAIL BY DEFAULT =============================#
tag @s remove teplus.anvil.CanExtract
tag @s add teplus.anvil.error.invalid_items
function teplus:anvil/extract/menu/change_item/inputs/deactivate_slots

# Update the storage to get the items from both inputs
data modify storage teplus:updates TAE.Inputs.Section1 set from entity @s Items[{Slot:10b}]
data modify storage teplus:updates TAE.Inputs.Section2 set from entity @s Items[{Slot:16b}]

#============================= ENCHANTED ITEM WITH NORMAL BOOKS =============================#
execute if score #extrmd teplus.game_opts matches 0 if data entity @s Items[{Slot:10b}].components.minecraft:enchantments if data storage teplus:updates {TAE:{Inputs:{Section2:{id:"minecraft:book"}}}} run return run function teplus:anvil/extract/interaction/checks/with_book


#============================= ENCHANTED ITEM WITH ISOLATED CORE =============================#
execute if data entity @s Items[{Slot:10b}].components.minecraft:enchantments if data storage teplus:updates {TAE:{Inputs:{Section2:{components:{"minecraft:custom_data":{teplus:{id:"isolated_core"}}}}}}} run return run function teplus:anvil/extract/interaction/checks/with_isolated_core


#============================= INVALID RIGHT INPUT ITEM =============================#
# In case the right input item isn't a book or isolated core item
execute if data entity @s Items[{Slot:10b}].components.minecraft:enchantments run function teplus:anvil/extract/interaction/create_item/failed {err:"invalid_right_input"}