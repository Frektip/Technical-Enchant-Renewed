#====================================== UPDATE UI SLOTS ======================================#
# Take a snapshot of all the items in the Technical Anvil
data modify storage teplus:updates ABX.CurrentUI set from block ~ ~ ~ Items

# $ui_changed determines weather the UI was changed or not
# Always reset the value globally
scoreboard players set $ui_changed teplus.admin_box.value 0

# Store in $ui_slots the number of UI items present in the current UI (should be 25)
data modify storage teplus:updates ABX.UICheckChange set from storage teplus:updates ABX.CurrentUI
execute store result score $ui_slots teplus.admin_box.value run data remove storage teplus:updates ABX.UICheckChange[{components:{"minecraft:custom_data":{teplus:{ui:1b}}}}]

# Check if there is a non UI item in any of the UI slots
execute store result score $ui_changed teplus.admin_box.value run data get storage teplus:updates ABX.UICheckChange

# Check if a UI item was taken from the barrel 
execute if score $ui_slots teplus.admin_box.value < #27const teplus.data run scoreboard players set $ui_changed teplus.admin_box.value 1

# If UI items changed, refresh the UI slots
execute if score $ui_changed teplus.admin_box.value matches 1.. run function teplus:admin/box/refresh_ui/init {menu:"Items"}
#=============================================================================================#



#====================================== ADMIN BOX ACTIONS ======================================#
# Player clics on one of the custom items from TE+
# Look for the specific "teplus" custom component data
execute unless data storage teplus:updates ABX.CurrentUI[{components:{"minecraft:custom_data":{teplus:{id:"guide_book"}}}}] run return run function teplus:admin/box/items_menu/give/static_item {item_id:"guide_book"}
execute unless data storage teplus:updates ABX.CurrentUI[{components:{"minecraft:custom_data":{teplus:{id:"charged_bookshelf"}}}}] run return run function teplus:admin/box/items_menu/give/static_item {item_id:"charged_bookshelf"}
execute unless data storage teplus:updates ABX.CurrentUI[{components:{"minecraft:custom_data":{teplus:{id:"birthday_potion"}}}}] run return run function teplus:admin/box/items_menu/give/static_item {item_id:"birthday_potion"}
execute unless data storage teplus:updates ABX.CurrentUI[{components:{"minecraft:custom_data":{teplus:{id:"technical_anvil"}}}}] run return run function teplus:admin/box/items_menu/give/static_item {item_id:"technical_anvil"}
execute unless data storage teplus:updates ABX.CurrentUI[{components:{"minecraft:custom_data":{teplus:{id:"polished_lapis"}}}}] run return run function teplus:admin/box/items_menu/give/static_item {item_id:"polished_lapis"}
execute unless data storage teplus:updates ABX.CurrentUI[{components:{"minecraft:custom_data":{teplus:{id:"isolated_core"}}}}] run return run function teplus:admin/box/items_menu/give/static_item {item_id:"isolated_core"}
execute unless data storage teplus:updates ABX.CurrentUI[{components:{"minecraft:custom_data":{teplus:{id:"blessed_orb"}}}}] run return run function teplus:admin/box/items_menu/give/static_item {item_id:"blessed_orb"}
execute unless data storage teplus:updates ABX.CurrentUI[{components:{"minecraft:custom_data":{teplus:{id:"admin_box"}}}}] run return run function teplus:admin/box/items_menu/give/static_item {item_id:"admin_box"}

# Player clics on the Return Main Button item
execute unless data storage teplus:updates ABX.CurrentUI[{Slot:26b}].components.minecraft:custom_data.teplus.main_return run function teplus:admin/box/items_menu/to_main_menu
#=============================================================================================#