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
execute unless data storage teplus:tech_anvil.ui CurrentItems.[{Slot:22b}].id run function technical_anvil:menu/change_item/can_change


#--#--#MERGING SYSTEM#--#--#



#Set it false by default
scoreboard players set @s TCHA.Value -1
#Check if only there is an item in one of the input slots
execute if data entity @s[scores={TCHA.Value=-1}] Items[{Slot:2b}].id run scoreboard players set @s TCHA.Value -2
execute if data entity @s[scores={TCHA.Value=-1}] Items[{Slot:6b}].id run scoreboard players set @s TCHA.Value -3

#Update the UI according to the Slots placed
execute if score @s TCHA.Value matches -2 run function technical_anvil:menu/change_item/slot_1_add
execute if score @s TCHA.Value matches -3 run function technical_anvil:menu/change_item/slot_2_add

tag @s remove CanCombine
execute if score @s[tag=InSlot1] TCHA.Value matches -1 run tag @s remove InSlot1
execute if score @s[tag=InSlot2] TCHA.Value matches -1 run tag @s remove InSlot2


execute if entity @s[scores={TCHA.Value=-4}] run function technical_anvil:menu/change_item/both_items
tag @s remove HasCombined