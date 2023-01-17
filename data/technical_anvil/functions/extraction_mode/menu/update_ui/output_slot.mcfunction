data remove entity @s Items[{Slot:13b}]
data modify entity @s[tag=Error1] Items append value {Slot: 13b, id: "structure_void", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340003, display: {Lore:['{"text":"You cannot extract enchantments from those items!","color":"gray","italic":false}'],Name: '{"text":"Error!","color":"red","italic":false}'}}}
data modify entity @s[tag=Error2] Items append value {Slot: 13b, id: "structure_void", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340003, display: {Lore:['{"text":"You need to place normal books in the other slot!","color":"gray","italic":false}'],Name: '{"text":"Error!","color":"red","italic":false}'}}}
data modify entity @s[tag=!Error1,tag=!Error2] Items append value {Slot: 13b, id: "structure_void", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340003, display: {Name: '{"text":""}'}}}

data modify storage teplus:tech_extract CurrentItems[{Slot:13b}] set from entity @s Items[{Slot:13b}]