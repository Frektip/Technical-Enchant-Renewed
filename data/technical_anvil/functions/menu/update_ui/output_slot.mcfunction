data remove entity @s Items[{Slot:22b}]
data modify entity @s[tag=Error1] Items append value {Slot: 22b, id: "structure_void", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340003, display: {Lore:['{"translate":"You cannot combine those items!","color":"gray","italic":false}'],Name: '{"translate":"Error!","color":"red","italic":false}'}}}
data modify entity @s[tag=Error2] Items append value {Slot: 22b, id: "structure_void", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340003, display: {Lore:['{"translate":"You cannot add that enchantment","color":"gray","italic":false}','{"translate":"to that item!","color":"gray","italic":false}'],Name: '{"translate":"Error!","color":"red","italic":false}'}}}
data modify entity @s[tag=!Error1,tag=!Error2] Items append value {Slot: 22b, id: "structure_void", Count:1b, tag: {Teplus:{ui:1b}, display: {Name: '{"text":""}'}}}

data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:22b}] set from entity @s Items[{Slot:22b}]