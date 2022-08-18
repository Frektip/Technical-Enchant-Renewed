#Check only for bow input
execute if data entity @s {Items:[{Slot:10b,id:"minecraft:bow"}]} run function technical_anvil:extraction_mode/interaction/update_input/bowcross_check

#Check only for crossbow input
execute if data entity @s {Items:[{Slot:10b,id:"minecraft:crossbow"}]} run function technical_anvil:extraction_mode/interaction/update_input/bowcross_check

#Check only for shield input
execute if data entity @s {Items:[{Slot:10b,id:"minecraft:shield"}]} run function technical_anvil:extraction_mode/interaction/update_input/shield_check

#Check for especial enchantments to remove their attributes
execute if data storage teplus:tech_extract {CurrentOutput:{tag:{StoredCustomEnchantments:[{id:"Agility"}]}}} run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers

execute if data storage teplus:tech_extract {CurrentOutput:{tag:{StoredCustomEnchantments:[{id:"Armored"}]}}} run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers

execute if data storage teplus:tech_extract {CurrentOutput:{tag:{StoredCustomEnchantments:[{id:"AttackSpeed"}]}}} run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers

execute if data storage teplus:tech_extract {CurrentOutput:{tag:{StoredCustomEnchantments:[{id:"LifePlus"}]}}} run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers



data remove entity @s Items[{Slot:10b}].tag.CustomEnchantments[0]

