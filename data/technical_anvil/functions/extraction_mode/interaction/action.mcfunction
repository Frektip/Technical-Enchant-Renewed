
execute if entity @s[tag=CanExtract,tag=!techanv.vanilla] run function technical_anvil:extraction_mode/interaction/extraction_succeed
execute if entity @s[tag=CanExtract,tag=techanv.vanilla] run function technical_anvil:extraction_mode/interaction/extraction_vanilla


tag @s remove CanExtract

data modify entity @s Items[{Slot:22b}].tag.SectionChange1 set value {Slot:10b,id:"minecraft:air"}
data modify entity @s Items[{Slot:22b}].tag.SectionChange2 set value {Slot:16b,id:"minecraft:air"}