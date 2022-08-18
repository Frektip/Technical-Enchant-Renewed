#Store all the items in the Technical Anvil
data modify storage teplus:tech_extract CurrentItems set from entity @s Items

##-----------CLEAR ITEMS------##
# UI items checks
scoreboard players set %tchaex.ui_changed TCHA.Value 0 
data modify storage teplus:tech_extract CurrentUI set from storage teplus:tech_extract CurrentItems
data remove storage teplus:tech_extract CurrentUI[{Slot:10b}]
data remove storage teplus:tech_extract CurrentUI[{Slot:16b}]
data remove storage teplus:tech_extract CurrentUI[{Slot:13b}]
data modify storage teplus:tech_extract CurrentUICheckChange set from storage teplus:tech_extract CurrentUI
execute store result score %tchaex.ui_changed TCHA.Value run data modify storage teplus:tech_extract CurrentUICheckChange set from storage teplus:tech_anvil.ui Setup_extract
# - If UI items changed 
execute if score %tchaex.ui_changed TCHA.Value matches 1.. run function technical_anvil:extraction_mode/menu/update_ui/init

##------TECHNICAL ANVIL USE--------##
execute if entity @s[tag=tcha_open] unless data storage teplus:tech_extract CurrentItems[{Slot:4b}].tag.Teplus.switch run function technical_anvil:extraction_mode/menu/change_item/switch_mode

execute unless data storage teplus:tech_extract CurrentItems[{Slot:22b}].tag.Teplus.extract run function technical_anvil:extraction_mode/interaction/action
execute if data storage teplus:tech_extract {CurrentItems:[{Slot:13b,id:"minecraft:air"}]} run function technical_anvil:extraction_mode/menu/change_item/can_change

#--#--#EXTRACTING SYSTEM#--#--#
execute store success score @s TCHA.Value run data modify entity @s Items[{Slot:22b}].tag.SectionChange1 set from storage teplus:tech_extract CurrentItems[{Slot:10b}]
execute unless data storage teplus:tech_extract {CurrentItems:[{Slot:10b,id:"minecraft:air"}]} if entity @s[scores={TCHA.Value=1}] run function technical_anvil:extraction_mode/menu/change_item/slot_1_add
execute if data storage teplus:tech_extract {CurrentItems:[{Slot:10b,id:"minecraft:air"}]} if entity @s[scores={TCHA.Value=1}] run function technical_anvil:extraction_mode/menu/change_item/slot_1_remove


execute store success score @s TCHA.Value run data modify entity @s Items[{Slot:22b}].tag.SectionChange2 set from storage teplus:tech_extract CurrentItems[{Slot:16b}]
execute unless data storage teplus:tech_extract {CurrentItems:[{Slot:16b,id:"minecraft:air"}]} if entity @s[scores={TCHA.Value=1}] run function technical_anvil:extraction_mode/menu/change_item/slot_2_add
execute if data storage teplus:tech_extract {CurrentItems:[{Slot:16b,id:"minecraft:air"}]} if entity @s[scores={TCHA.Value=1}] run function technical_anvil:extraction_mode/menu/change_item/slot_2_remove

tag @s remove HasExtracted
