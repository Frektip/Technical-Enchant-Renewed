#====================================== UPDATE UI SLOTS ======================================#
# Take a snapshot of all the items in the Technical Anvil
data modify storage teplus:updates TAM.CurrentUI set from entity @s Items

# Ignore Input slots
data remove storage teplus:updates TAM.CurrentUI[{Slot:2b}]
data remove storage teplus:updates TAM.CurrentUI[{Slot:6b}]

# $ui_changed determines weather the UI was changed or not
# Always reset the value globally
scoreboard players set $ui_changed teplus.anvil.value 0

# Store in $ui_slots the number of UI items present in the current UI (should be 25)
data modify storage teplus:updates TAM.UICheckChange set from storage teplus:updates TAM.CurrentUI
execute store result score $ui_slots teplus.anvil.value run data remove storage teplus:updates TAM.UICheckChange[{components:{"minecraft:custom_data":{teplus:{ui:1b}}}}]

# Check if there is a non UI item in any of the UI slots
execute store result score $ui_changed teplus.anvil.value run data get storage teplus:updates TAM.UICheckChange

# Check if a UI item was taken from the chest minecart 
execute if score $ui_slots teplus.anvil.value < #25const teplus.data run scoreboard players set $ui_changed teplus.anvil.value 1

# If UI items changed, refresh the UI slots
execute if score $ui_changed teplus.anvil.value matches 1.. run function teplus:anvil/events/refresh_ui/init {input1:2,input2:6,profile:"Merge"}
#=============================================================================================#



#====================================== TECHNICAL ANVIL ACTIONS ======================================#
# Player clics on the Toggle item
execute if entity @s[tag=teplus.anvil.open] unless data storage teplus:updates TAM.CurrentUI[{Slot:4b}].components.minecraft:custom_data.teplus.toggle run function teplus:anvil/merge/menu/change_item/switch_mode

# Player clics on the Merge action item
execute if entity @s[tag=teplus.anvil.CanCombine] unless data storage teplus:updates TAM.CurrentUI[{Slot:13b}].components.minecraft:custom_data.teplus.merge run function teplus:anvil/merge/action/try
#=============================================================================================#



#====================================== MERGING SYSTEM ======================================#
# Set it false by default
scoreboard players set @s teplus.anvil.value -1
execute if entity @s[tag=!teplus.anvil.CanCombine] run function teplus:anvil/merge/menu/set_default_output

# Check if there is an item in one of the input slots
execute if data entity @s[scores={teplus.anvil.value=-1}] Items[{Slot:2b}].id run scoreboard players set @s teplus.anvil.value -2
execute if data entity @s[scores={teplus.anvil.value=-1}] Items[{Slot:6b}].id run scoreboard players set @s teplus.anvil.value -3

# Update the UI according to the input slots used (-2 for slot 2b and -3 for slot 6b)
execute if score @s teplus.anvil.value matches -2 run function teplus:anvil/merge/menu/change_item/inputs/slot_1_check
execute if score @s teplus.anvil.value matches -3 run function teplus:anvil/merge/menu/change_item/inputs/slot_2_check

tag @s remove teplus.anvil.CanCombine
execute if score @s[tag=teplus.anvil.InSlot1] teplus.anvil.value matches -1 run tag @s remove teplus.anvil.InSlot1
execute if score @s[tag=teplus.anvil.InSlot2] teplus.anvil.value matches -1 run tag @s remove teplus.anvil.InSlot2

# In case there's an item at any of the input slots (with score value = 0)
execute if entity @s[scores={teplus.anvil.value=0}] run function teplus:anvil/merge/menu/change_item/inputs/check_items
#=============================================================================================#