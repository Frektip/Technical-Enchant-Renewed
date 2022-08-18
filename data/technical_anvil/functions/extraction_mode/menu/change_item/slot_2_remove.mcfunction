#------------------ANVIL-------------------#
tag @s remove CanExtract
tag @s remove InSlot2
function technical_anvil:extraction_mode/menu/update_ui/slot_2/14
function technical_anvil:extraction_mode/menu/update_ui/slot_2/15
execute unless data storage teplus:tech_extract {Items:[{Slot:10b,id:"minecraft:air"}]} run tag @s add InSlot1
function technical_anvil:extraction_mode/menu/update_ui/slot_1/11
function technical_anvil:extraction_mode/menu/update_ui/slot_1/12

data modify storage teplus:tech_extract SectionChange1 set from entity @s Items[{Slot:22b}].tag.SectionChange1
data modify storage teplus:tech_extract SectionChange2 set from entity @s Items[{Slot:22b}].tag.SectionChange2
data remove entity @s Items[{Slot:22b}]
data modify entity @s Items[{Slot:22b}] set from storage teplus:tech_anvil.ui Setup_extract[{Slot:22b}]
data modify entity @s Items[{Slot:22b}].tag.SectionChange1 set from storage teplus:tech_extract SectionChange1
data modify entity @s Items[{Slot:22b}].tag.SectionChange2 set from storage teplus:tech_extract SectionChange2

data remove entity @s Items[{Slot:22b}]
data modify entity @s Items[{Slot:22b}] set from storage teplus:tech_anvil.ui Setup_extract[{Slot:13b}]
#------------------------------------------#