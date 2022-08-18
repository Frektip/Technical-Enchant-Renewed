#------------------ANVIL-------------------#
tag @s remove CanCombine
tag @s remove InSlot1
function technical_anvil:menu/update_ui/slot_1/11
function technical_anvil:menu/update_ui/slot_1/20
function technical_anvil:menu/update_ui/slot_1/21
execute unless data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:air"}]} run tag @s add InSlot2
function technical_anvil:menu/update_ui/slot_2/15
function technical_anvil:menu/update_ui/slot_2/24
function technical_anvil:menu/update_ui/slot_2/23

data modify storage teplus:tech_anvil.ui SectionChange1 set from entity @s Items[{Slot:13b}].tag.SectionChange1
data modify storage teplus:tech_anvil.ui SectionChange2 set from entity @s Items[{Slot:13b}].tag.SectionChange2
data remove entity @s Items[{Slot:13b}]
data modify entity @s Items[{Slot:13b}] set from storage teplus:tech_anvil.ui Setup[{Slot:13b}]
data modify entity @s Items[{Slot:13b}].tag.SectionChange1 set from storage teplus:tech_anvil.ui SectionChange1
data modify entity @s Items[{Slot:13b}].tag.SectionChange2 set from storage teplus:tech_anvil.ui SectionChange2

data remove entity @s Items[{Slot:22b}]
data modify entity @s Items[{Slot:22b}] set from storage teplus:tech_anvil.ui Setup[{Slot:22b}]
#------------------------------------------#