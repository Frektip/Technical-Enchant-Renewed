#------------------ANVIL-------------------#
execute if entity @s[tag=HasExtracted] run function technical_anvil:extraction_mode/menu/update_ui/output_slot
tag @s add InSlot2
function technical_anvil:extraction_mode/menu/update_ui/slot_2/14
function technical_anvil:extraction_mode/menu/update_ui/slot_2/15
execute unless data storage teplus:tech_extract {CurrentItems:[{Slot:10b,id:"minecraft:air"}]} run function technical_anvil:extraction_mode/menu/change_item/both_items
#------------------------------------------#