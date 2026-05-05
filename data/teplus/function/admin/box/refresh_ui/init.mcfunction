# @params:
#  - {menu}: The admin box UI menu that needs to be placed again (Main, Items or Enchants)

# Give back to the player the placed item if there's one
data modify storage teplus:updates ChangedItems set from block ~ ~ ~ Items

# Remove all UI items and input items from the storage
data remove storage teplus:updates ChangedItems[{components:{"minecraft:custom_data":{teplus:{ui:1b}}}}]

# Get how many non UI items are left
execute store result score $left_items teplus.admin_box.value run data get storage teplus:updates ChangedItems
execute if score $left_items teplus.admin_box.value matches 1.. run function teplus:admin/box/refresh_ui/return_items

# Clear storage
data remove storage teplus:updates ChangedItems

# Refresh UI
$data modify block ~ ~ ~ Items append from storage teplus:ui Global[{profile:"admin_box"}].$(menu)[]