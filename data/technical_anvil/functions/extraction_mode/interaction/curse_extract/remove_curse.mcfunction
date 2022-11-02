#Check only for bow input
execute if data entity @s {Items:[{Slot:10b,id:"minecraft:bow"}]} run function #technical_anvil:extraction_mode/bowcross_check

#Check only for crossbow input
execute if data entity @s {Items:[{Slot:10b,id:"minecraft:crossbow"}]} run function #technical_anvil:extraction_mode/bowcross_check

data remove entity @s Items[{Slot:10b}].tag.CustomCurse[0]