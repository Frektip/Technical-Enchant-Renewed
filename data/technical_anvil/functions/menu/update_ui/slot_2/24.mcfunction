#--------------SAVING ITEMS----------------#

data remove entity @s Items[{Slot:24b}]
execute if entity @s[tag=InSlot2] run data modify entity @s Items prepend value {Slot: 24b, id: "lime_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:70130, display: {Name: '{"text":""}'}}}
execute if entity @s[tag=!InSlot2] run data modify entity @s Items prepend value {Slot: 24b, id: "red_stained_glass_pane", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:70124, display: {Name: '{"text":""}'}}}
data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:24b}] set from entity @s Items[{Slot:24b}]
#------------------------------------------#