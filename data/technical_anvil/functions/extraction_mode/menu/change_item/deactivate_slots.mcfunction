#------------------ANVIL-------------------#
tag @s remove CanExtract
tag @s remove CurseExtract
tag @s remove InSlot1
function technical_anvil:extraction_mode/menu/update_ui/slot_1/11
function technical_anvil:extraction_mode/menu/update_ui/slot_1/12
tag @s remove InSlot2
function technical_anvil:extraction_mode/menu/update_ui/slot_2/14
function technical_anvil:extraction_mode/menu/update_ui/slot_2/15

data modify storage teplus:tech_extract SectionChange1 set from entity @s Items[{Slot:22b}].tag.SectionChange1
data modify storage teplus:tech_extract SectionChange2 set from entity @s Items[{Slot:22b}].tag.SectionChange2
data remove entity @s Items[{Slot:22b}]
data modify entity @s Items prepend from storage teplus:tech_anvil.ui Setup_extract[{Slot:22b}]
data modify entity @s Items[{Slot:22b}].tag.SectionChange1 set from storage teplus:tech_extract SectionChange1
data modify entity @s Items[{Slot:22b}].tag.SectionChange2 set from storage teplus:tech_extract SectionChange2

tag @s add Error1
data remove entity @s Items[{Slot:13b}]
execute if score #extrmd game.Opts matches 0 run data modify entity @s Items prepend value {Slot: 13b, id: "structure_void", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340003, display: {Lore:['{"translate":"You can not extract enchantments from those items!","color":"gray","italic":false}'],Name: '{"translate":"Error!","color":"red","italic":false}'}}}
execute if score #extrmd game.Opts matches 1 run data modify entity @s Items prepend value {Slot: 13b, id: "structure_void", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:7340003, display: {Lore:['{"translate":"This feature is currently disabled!","color":"gray","italic":false}'],Name: '{"translate":"Error!","color":"red","italic":false}'}}}
data remove storage teplus:item_lore ExtractLore
data remove storage teplus:tech_extract ResultItem
#------------------------------------------#