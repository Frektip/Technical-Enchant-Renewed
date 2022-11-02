#Check only for bow input
execute if data entity @s {Items:[{Slot:10b,id:"minecraft:bow"}]} run function #technical_anvil:extraction_mode/bowcross_check

#Check only for crossbow input
execute if data entity @s {Items:[{Slot:10b,id:"minecraft:crossbow"}]} run function #technical_anvil:extraction_mode/bowcross_check

#Check for special enchantments to remove their attributes
execute if data storage teplus:tech_extract {CurrentOutput:{tag:{StoredCustomEnchantments:[{id:"Agility"}]}}} run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers

execute if data storage teplus:tech_extract {CurrentOutput:{tag:{StoredCustomEnchantments:[{id:"AntiKnockback"}]}}} run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.knockback_resistance"}]

execute if data storage teplus:tech_extract {CurrentOutput:{tag:{StoredCustomEnchantments:[{id:"Armored"}]}}} run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers

execute if data storage teplus:tech_extract {CurrentOutput:{tag:{StoredCustomEnchantments:[{id:"AttackSpeed"}]}}} run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers

execute if data storage teplus:tech_extract {CurrentOutput:{tag:{StoredCustomEnchantments:[{id:"HardnessPlus"}]}}} run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor_toughness"}]

execute if data storage teplus:tech_extract {CurrentOutput:{tag:{StoredCustomEnchantments:[{id:"LifePlus"}]}}} run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers



data remove entity @s Items[{Slot:10b}].tag.CustomEnchantments[0]

