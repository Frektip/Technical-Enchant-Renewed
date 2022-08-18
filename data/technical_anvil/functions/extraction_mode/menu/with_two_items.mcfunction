#-------------It is successful, turn all panes lime-------------#
data remove entity @s Items[{Slot:11b}]
data modify entity @s Items prepend value {Slot: 11b, id: "lime_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:70134, display: {Name: '{"text":""}'}}}
data remove entity @s Items[{Slot:12b}]
data modify entity @s Items prepend value {Slot: 12b, id: "lime_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:70133, display: {Name: '{"text":""}'}}}
data remove entity @s Items[{Slot:14b}]
data modify entity @s Items prepend value {Slot: 14b, id: "lime_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:70132, display: {Name: '{"text":""}'}}}
data remove entity @s Items[{Slot:15b}]
data modify entity @s Items prepend value {Slot: 15b, id: "lime_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:70134, display: {Name: '{"text":""}'}}}

#Because is successfull, add inslot tags
tag @s add InSlot1
tag @s add InSlot2

function technical_anvil:extraction_mode/interaction/create_item
#------------------------------------------#