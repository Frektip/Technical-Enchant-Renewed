# @params:
#  - {input1}: Ignore items that were placed on the left input slot
#  - {input2}: Ignore items that were placed on the right input slot
#  - {profile}: The technical anvil UI that needs to be placed again (Merge or Extract)

# Give back to the player the placed item if there's one
data modify storage teplus:updates ChangedItems set from entity @s Items

# Remove all UI items and input items from the storage
data remove storage teplus:updates ChangedItems[{components:{"minecraft:custom_data":{teplus:{ui:1b}}}}]
$data remove storage teplus:updates ChangedItems[{Slot:$(input1)b}]
$data remove storage teplus:updates ChangedItems[{Slot:$(input2)b}]

# Get how many non UI items are left
execute store result score $left_items teplus.anvil.value run data get storage teplus:updates ChangedItems
execute if score $left_items teplus.anvil.value matches 1.. run function teplus:anvil/events/refresh_ui/return_items

# Clear storage
data remove storage teplus:updates ChangedItems

# Refresh UI
$data modify entity @s Items append from storage teplus:ui Global[{profile:"technical_anvil"}].$(profile)[]