#--------------SAVING ITEMS----------------#

data remove entity @s Items[{Slot:23b}]
execute if entity @s[tag=InSlot2] run data modify entity @s Items append value {Slot: 23b, id: "lime_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340018, display: {Name: '{"text":""}'}}}
execute if entity @s[tag=!InSlot2] run data modify entity @s Items append value {Slot: 23b, id: "red_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340012, display: {Name: '{"text":""}'}}}
data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:23b}] set from entity @s Items[{Slot:23b}]
#------------------------------------------#