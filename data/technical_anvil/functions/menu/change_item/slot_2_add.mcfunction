#------------------ANVIL-------------------#
execute if entity @s[tag=HasCombined] run function technical_anvil:menu/update_ui/output_slot
tag @s add InSlot2
function technical_anvil:menu/update_ui/slot_2/15
function technical_anvil:menu/update_ui/slot_2/24
function technical_anvil:menu/update_ui/slot_2/23
execute unless data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:2b,id:"minecraft:air"}]} run function technical_anvil:menu/change_item/both_items
#------------------------------------------#