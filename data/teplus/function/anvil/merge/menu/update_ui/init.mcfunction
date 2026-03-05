# Give back to the player the placed item if there's one
data modify storage teplus:updates TAM.ChangedItems set from entity @s Items
data remove storage teplus:updates TAM.ChangedItems[{components:{"minecraft:custom_data":{teplus:{ui:1b}}}}]
execute if data storage teplus:updates TAM.ChangedItems[0].id run function teplus:anvil/merge/menu/update_ui/return_item

# Update UI
data modify entity @s Items append from storage teplus:ui Global[{profile:"technical_anvil"}].Merge[]