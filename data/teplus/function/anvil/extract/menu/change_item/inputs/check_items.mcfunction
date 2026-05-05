#============================= FAIL BY DEFAULT =============================#
tag @s remove teplus.anvil.CanExtract
function teplus:anvil/extract/menu/change_item/inputs/deactivate_slots

# Update the storage to get the items from both inputs
data modify storage teplus:updates TAE.Inputs.Section1 set from entity @s Items[{Slot:10b}]
data modify storage teplus:updates TAE.Inputs.Section2 set from entity @s Items[{Slot:16b}]

#============================= ENCHANTED ITEM WITH NORMAL BOOKS =============================#
execute if score #extrmd teplus.game_opts matches 0 if data entity @s Items[{Slot:10b}].components.minecraft:enchantments if data storage teplus:updates {TAE:{Inputs:{Section2:{id:"minecraft:book"}}}} run return run function teplus:anvil/extract/interaction/checks/with_book


#============================= ENCHANTED ITEM WITH ISOLATED CORE =============================#
execute if data entity @s Items[{Slot:10b}].components.minecraft:enchantments if data storage teplus:updates {TAE:{Inputs:{Section2:{components:{"minecraft:custom_data":{teplus:{id:"isolated_core"}}}}}}} run return run function teplus:anvil/extract/interaction/checks/with_isolated_core


#============================= ERRORS UI UPDATE =============================#
# In case the right input item isn't a book or isolated core item
execute if data entity @s Items[{Slot:10b}].components.minecraft:enchantments run return run function teplus:anvil/extract/interaction/create_item/failed {err:"invalid_right_input"}

# In case none of the above conditiones were met, use the default error message
# NOTE: In this context, at least one input slot is being used
function teplus:anvil/extract/interaction/create_item/failed {err:"invalid_items"}