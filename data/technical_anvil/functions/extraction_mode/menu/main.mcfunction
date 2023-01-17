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
execute unless data storage teplus:tech_extract CurrentItems.[{Slot:13b}].id run function technical_anvil:extraction_mode/menu/change_item/can_change

#--#--#EXTRACTING SYSTEM#--#--#



#Set it false by default
scoreboard players set @s TCHA.Value -1
#Check if only there is an item in one of the input slots
execute if data entity @s[scores={TCHA.Value=-1}] Items[{Slot:10b}].id run scoreboard players set @s TCHA.Value -2
execute if data entity @s[scores={TCHA.Value=-1}] Items[{Slot:16b}].id run scoreboard players set @s TCHA.Value -3

#Update the UI according to the Slots placed
execute if score @s TCHA.Value matches -2 run function technical_anvil:extraction_mode/menu/change_item/slot_1_add
execute if score @s TCHA.Value matches -3 run function technical_anvil:extraction_mode/menu/change_item/slot_2_add

tag @s remove CanExtract
execute if score @s[tag=InSlot1] TCHA.Value matches -1 run tag @s remove InSlot1
execute if score @s[tag=InSlot2] TCHA.Value matches -1 run tag @s remove InSlot2

execute if entity @s[scores={TCHA.Value=-4}] run function technical_anvil:extraction_mode/menu/change_item/both_items

tag @s remove HasExtracted
