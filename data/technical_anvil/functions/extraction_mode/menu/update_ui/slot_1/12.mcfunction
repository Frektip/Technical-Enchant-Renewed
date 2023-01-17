#--------------SAVING ITEMS----------------#

data remove entity @s Items[{Slot:12b}]
execute if entity @s[tag=InSlot1] run data modify entity @s Items append value {Slot: 12b, id: "lime_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340019, display: {Name: '{"text":""}'}}}
execute if entity @s[tag=!InSlot1] run data modify entity @s Items append value {Slot: 12b, id: "red_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340013, display: {Name: '{"text":""}'}}}
data modify storage teplus:tech_extract CurrentItems[{Slot:12b}] set from entity @s Items[{Slot:12b}]
#------------------------------------------#