tag @s add Error2
data remove entity @s Items[{Slot:22b}]
data modify entity @s[tag=!TCHA.inxpcrst] Items prepend value {Slot: 22b, id: "structure_void", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340003, display: {Lore:['{"translate":"You cannot add that enchantment","color":"gray","italic":false}','{"translate":"to that item!","color":"gray","italic":false}'],Name: '{"translate":"Error!","color":"red","italic":false}'}}}
data modify entity @s[tag=TCHA.inxpcrst] Items prepend value {Slot: 22b, id: "structure_void", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340003, display: {Lore:['{"translate":"You cannot combine","color":"gray","italic":false}','{"translate":"those items!","color":"gray","italic":false}'],Name: '{"translate":"Error!","color":"red","italic":false}'}}}


tag @s remove InSlot1
function technical_anvil:menu/update_ui/slot_1/11
function technical_anvil:menu/update_ui/slot_1/20
function technical_anvil:menu/update_ui/slot_1/21

tag @s remove InSlot2
function technical_anvil:menu/update_ui/slot_2/15
function technical_anvil:menu/update_ui/slot_2/24
function technical_anvil:menu/update_ui/slot_2/23