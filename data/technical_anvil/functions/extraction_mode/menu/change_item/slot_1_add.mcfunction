#------------------ANVIL-------------------#
execute if entity @s[tag=HasExtracted] run function technical_anvil:extraction_mode/menu/update_ui/output_slot
tag @s add InSlot1
function technical_anvil:extraction_mode/menu/update_ui/slot_1/11
function technical_anvil:extraction_mode/menu/update_ui/slot_1/12
execute unless data storage teplus:tech_extract {CurrentItems:[{Slot:16b,id:"minecraft:air"}]} run function technical_anvil:extraction_mode/menu/change_item/both_items
#------------------------------------------#