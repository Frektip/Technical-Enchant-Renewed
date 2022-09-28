tag @s add Error2
data remove entity @s Items[{Slot:13b}]
data modify entity @s[tag=!teplus.vancurse_limit] Items prepend value {Slot: 13b, id: "structure_void", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:70139, display: {Lore:['{"text":"You need to place normal books in the other slot!","color":"gray","italic":false}'],Name: '{"text":"Error!","color":"red","italic":false}'}}}
data modify entity @s[tag=teplus.vancurse_limit] Items prepend value {Slot: 13b, id: "structure_void", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:70139, display: {Lore:['{"text":"You can not extract curses this method","color":"gray","italic":false}'],Name: '{"text":"Error!","color":"red","italic":false}'}}}


tag @s remove InSlot1
function technical_anvil:extraction_mode/menu/update_ui/slot_1/11
function technical_anvil:extraction_mode/menu/update_ui/slot_1/12

tag @s remove InSlot2
function technical_anvil:extraction_mode/menu/update_ui/slot_2/14
function technical_anvil:extraction_mode/menu/update_ui/slot_2/15
