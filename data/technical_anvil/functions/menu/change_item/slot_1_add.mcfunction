#------------------ANVIL-------------------#
execute if entity @s[tag=HasCombined] run function technical_anvil:menu/update_ui/output_slot
tag @s add InSlot1
function technical_anvil:menu/update_ui/slot_1/11
function technical_anvil:menu/update_ui/slot_1/20
function technical_anvil:menu/update_ui/slot_1/21
execute unless data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:air"}]} run function technical_anvil:menu/change_item/both_items
#------------------------------------------#