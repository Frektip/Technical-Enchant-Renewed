#============================= FAIL BY DEFAULT =============================#
tag @s remove teplus.anvil.CanCombine
function teplus:anvil/merge/menu/change_item/inputs/deactivate_slots

# Update the storage to get the items from both inputs
data modify storage teplus:updates TAM.Inputs.Section1 set from entity @s Items[{Slot:2b}]
data modify storage teplus:updates TAM.Inputs.Section2 set from entity @s Items[{Slot:6b}]

#============================= CUSTOM ENCHANTMENTS/CURSES WITH TWO BOOKS =============================#
execute if score #mrgbk teplus.game_opts matches 0 if data entity @s Items[{Slot:2b}].components.minecraft:stored_enchantments if data entity @s Items[{Slot:6b}].components.minecraft:stored_enchantments run return run function teplus:anvil/merge/menu/change_item/inputs/has_valid_inputs


#============================= COMBINING ITEMS WITH CUSTOM ENCHANTMENTS =============================#
# Debug all enchantable items in the left input slot
function #teplus:anvil/merge/menu/debug_input {storage:"Section1"}

# See if an item can be enchanted with a book
# Check if Section1 storage has teplus.valid value

execute if score #itwbk teplus.game_opts matches 0 if data storage teplus:updates TAM.Inputs.Section1.teplus.valid if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:enchanted_book"}}}} run return run function teplus:anvil/merge/menu/change_item/inputs/has_valid_inputs


#============================= COMBINING ITEMS WITH ITEMS =============================#
# Check first if both items are the same
execute if score #mrgit teplus.game_opts matches 0 run function #teplus:anvil/merge/menu/compare_items

# Only if the items are the same (minecart with a specific tag) ---> Debug all enchantable items in the right input slot
execute if score #mrgit teplus.game_opts matches 0 if entity @s[tag=teplus.anvil.IsSameItem] run function #teplus:anvil/merge/menu/debug_input {storage:"Section2"}

# Check if Section1 & Section2 storages have teplus.valid value
execute if score #mrgit teplus.game_opts matches 0 if entity @s[tag=teplus.anvil.IsSameItem] if data storage teplus:updates TAM.Inputs.Section1.teplus.valid if data storage teplus:updates TAM.Inputs.Section2.teplus.valid run return run function teplus:anvil/merge/menu/change_item/inputs/has_valid_inputs


#============================= COMBINE EXPERIENCE CRYSTALS =============================#


#============================= ERRORS UI UPDATE =============================#
# In case none of the above conditiones were met, use the default error message
# NOTE: In this context, at least one input slot is being used
function teplus:anvil/merge/interaction/create_item/failed {err:"invalid_items"}