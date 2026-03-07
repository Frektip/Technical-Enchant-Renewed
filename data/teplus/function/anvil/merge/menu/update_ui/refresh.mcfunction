# Give back to the player the placed item if there's one
data modify storage teplus:updates TAM.ChangedItems set from entity @s Items
# Remove all UI items and input items from the storage
data remove storage teplus:updates TAM.ChangedItems[{components:{"minecraft:custom_data":{teplus:{ui:1b}}}}]
data remove storage teplus:updates TAM.ChangedItems[{Slot:2b}]
data remove storage teplus:updates TAM.ChangedItems[{Slot:6b}]
execute if data storage teplus:updates TAM.ChangedItems[0].id run function teplus:anvil/merge/menu/update_ui/return_item

# Clear storage
data remove storage teplus:updates TAM.ChangedItems

# Refresh UI
data modify entity @s Items append from storage teplus:ui Global[{profile:"technical_anvil"}].Merge[]