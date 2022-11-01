#Store all the items in the Technical Anvil
data modify storage teplus:tech_anvil.ui CurrentItems set from entity @s Items

##-----------CLEAR ITEMS------##
# UI items checks
scoreboard players set %tcha.ui_changed TCHA.Value 0 
data modify storage teplus:tech_anvil.ui CurrentUI set from storage teplus:tech_anvil.ui CurrentItems
data remove storage teplus:tech_anvil.ui CurrentUI[{Slot:2b}]
data remove storage teplus:tech_anvil.ui CurrentUI[{Slot:6b}]
data remove storage teplus:tech_anvil.ui CurrentUI[{Slot:22b}]
data modify storage teplus:tech_anvil.ui CurrentUICheckChange set from storage teplus:tech_anvil.ui CurrentUI
execute store result score %tcha.ui_changed TCHA.Value run data modify storage teplus:tech_anvil.ui CurrentUICheckChange set from storage teplus:tech_anvil.ui Setup
# - If UI items changed 
execute if score %tcha.ui_changed TCHA.Value matches 1.. run function technical_anvil:menu/update_ui/init

##------TECHNICAL ANVIL USE--------##
execute if entity @s[tag=tcha_open] unless data storage teplus:tech_anvil.ui CurrentItems[{Slot:4b}].tag.Teplus.switch run function technical_anvil:menu/change_item/switch_mode

execute unless data storage teplus:tech_anvil.ui CurrentItems[{Slot:13b}].tag.Teplus.combine run function technical_anvil:interaction/try
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:22b,id:"minecraft:air"}]} run function technical_anvil:menu/change_item/can_change


#--#--#MERGING SYSTEM#--#--#

execute store success score @s TCHA.Value run data modify entity @s Items[{Slot:13b}].tag.SectionChange1 set from storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}]
execute unless data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:2b,id:"minecraft:air"}]} if entity @s[scores={TCHA.Value=1}] run function technical_anvil:menu/change_item/slot_1_add
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:2b,id:"minecraft:air"}]} if entity @s[scores={TCHA.Value=1}] run function technical_anvil:menu/change_item/slot_1_remove
execute store success score @s TCHA.Value run data modify entity @s Items[{Slot:13b}].tag.SectionChange2 set from storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}]
execute unless data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:air"}]} if entity @s[scores={TCHA.Value=1}] run function technical_anvil:menu/change_item/slot_2_add
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:air"}]} if entity @s[scores={TCHA.Value=1}] run function technical_anvil:menu/change_item/slot_2_remove

tag @s remove HasCombined