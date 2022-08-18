#--------------SAVING ITEMS----------------#

data remove entity @s Items[{Slot:21b}]
execute if entity @s[tag=InSlot1] run data modify entity @s Items prepend value {Slot: 21b, id: "lime_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:70133, display: {Name: '{"text":""}'}}}
execute if entity @s[tag=!InSlot1] run data modify entity @s Items prepend value {Slot: 21b, id: "red_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:70127, display: {Name: '{"text":""}'}}}
data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:21b}] set from entity @s Items[{Slot:21b}]
#------------------------------------------#