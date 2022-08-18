#------------------ANVIL-------------------#
tag @s remove CanCombine
tag @s remove InSlot1
function technical_anvil:menu/update_ui/slot_1/11
function technical_anvil:menu/update_ui/slot_1/20
function technical_anvil:menu/update_ui/slot_1/21
tag @s remove InSlot2
function technical_anvil:menu/update_ui/slot_2/15
function technical_anvil:menu/update_ui/slot_2/24
function technical_anvil:menu/update_ui/slot_2/23

data modify storage teplus:tech_anvil.ui SectionChange1 set from entity @s Items[{Slot:13b}].tag.SectionChange1
data modify storage teplus:tech_anvil.ui SectionChange2 set from entity @s Items[{Slot:13b}].tag.SectionChange2
data remove entity @s Items[{Slot:13b}]
data modify entity @s Items prepend from storage teplus:tech_anvil.ui Setup[{Slot:13b}]
data modify entity @s Items[{Slot:13b}].tag.SectionChange1 set from storage teplus:tech_anvil.ui SectionChange1
data modify entity @s Items[{Slot:13b}].tag.SectionChange2 set from storage teplus:tech_anvil.ui SectionChange2

tag @s add Error1
data remove entity @s Items[{Slot:22b}]
data modify entity @s Items prepend value {Slot: 22b, id: "structure_void", Count:1b, tag: {Teplus:{ui:1b},CustomModelData:70139, display: {Lore:['{"translate":"You cannot combine those items!","color":"gray","italic":false}'],Name: '{"translate":"Error!","color":"red","italic":false}'}}}
data remove storage teplus:item_lore CurrentLore
#------------------------------------------#