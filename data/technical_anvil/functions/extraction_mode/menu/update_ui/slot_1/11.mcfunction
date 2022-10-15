#--------------SAVING ITEMS----------------#

data remove entity @s Items[{Slot:11b}]
execute if entity @s[tag=InSlot1] run data modify entity @s Items prepend value {Slot: 11b, id: "lime_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340020, display: {Name: '{"text":""}'}}}
execute if entity @s[tag=!InSlot1] run data modify entity @s Items prepend value {Slot: 11b, id: "red_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340014, display: {Name: '{"text":""}'}}}
data modify storage teplus:tech_extract CurrentItems[{Slot:11b}] set from entity @s Items[{Slot:11b}]
#------------------------------------------#