# Give back to the player the placed item if there's one
data modify storage teplus:updates TAE.ChangedItems set from entity @s Items

# Remove all UI items and input items from the storage
data remove storage teplus:updates TAE.ChangedItems[{components:{"minecraft:custom_data":{teplus:{ui:1b}}}}]
data remove storage teplus:updates TAE.ChangedItems[{Slot:10b}]
data remove storage teplus:updates TAE.ChangedItems[{Slot:16b}]
#execute if data storage teplus:updates TAE.ChangedItems[0].id run function teplus:anvil/merge/menu/update_ui/return_item

# Clear storage
data remove storage teplus:updates TAE.ChangedItems

# Refresh UI
data modify entity @s Items append from storage teplus:ui Global[{profile:"technical_anvil"}].Extract[]