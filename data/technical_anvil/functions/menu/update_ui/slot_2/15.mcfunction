#--------------SAVING ITEMS----------------#

data remove entity @s Items[{Slot:15b}]
execute if entity @s[tag=InSlot2] run data modify entity @s Items append value {Slot: 15b, id: "lime_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340015, display: {Name: '{"text":""}'}}}
execute if entity @s[tag=!InSlot2] run data modify entity @s Items append value {Slot: 15b, id: "red_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340009, display: {Name: '{"text":""}'}}}
data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:15b}] set from entity @s Items[{Slot:15b}]
#------------------------------------------#