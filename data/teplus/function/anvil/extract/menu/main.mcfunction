#====================================== UPDATE UI SLOTS ======================================#
# Take a snapshot of all the items in the Technical Anvil
data modify storage teplus:updates TAE.CurrentUI set from entity @s Items

# Ignore Input slots
data remove storage teplus:updates TAE.CurrentUI[{Slot:10b}]
data remove storage teplus:updates TAE.CurrentUI[{Slot:16b}]

# $ui_changed determines weather the UI was changed or not
# Always reset the value globally
scoreboard players set $ui_changed teplus.anvil.value 0

# Store in $ui_slots the number of UI items present in the current UI (should be 25)
data modify storage teplus:updates TAE.UICheckChange set from storage teplus:updates TAE.CurrentUI
execute store result score $ui_slots teplus.anvil.value run data remove storage teplus:updates TAE.UICheckChange[{components:{"minecraft:custom_data":{teplus:{ui:1b}}}}]

# Check if there is a non UI item in any of the UI slots
execute store result score $ui_changed teplus.anvil.value run data get storage teplus:updates TAE.UICheckChange

# Check if a UI item was taken from the chest minecart 
execute if score $ui_slots teplus.anvil.value < #25const teplus.data run scoreboard players set $ui_changed teplus.anvil.value 1

# If UI items changed, refresh the UI slots
execute if score $ui_changed teplus.anvil.value matches 1.. run function teplus:anvil/events/refresh_ui/init {input1:10,input2:16,profile:"Extract"}
#=============================================================================================#



#====================================== TECHNICAL ANVIL ACTIONS ======================================#
# Player clics on the Toggle item
execute if entity @s[tag=teplus.anvil.open] unless data storage teplus:updates TAE.CurrentUI[{Slot:4b}].components.minecraft:custom_data.teplus.toggle run function teplus:anvil/extract/menu/change_item/switch_mode

# Player clics on the Extract action item
#execute unless data storage teplus:updates TAE.CurrentUI[{Slot:22b}].components.minecraft:custom_data.teplus.extract run function teplus:anvil/extract/action/try