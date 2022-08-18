#Remove attributes by default
data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers

#Check for custom shield combinations
execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"AntiKnockback"}]}}]} if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"HardnessPlus"}]}}]} if data storage teplus:tech_extract {CurrentOutput:{tag:{StoredCustomEnchantments:[{id:"AntiKnockback"}]}}} run function technical_anvil:extraction_mode/interaction/update_input/shield_antiknockback_remove
execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"AntiKnockback"}]}}]} if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"HardnessPlus"}]}}]} if data storage teplus:tech_extract {CurrentOutput:{tag:{StoredCustomEnchantments:[{id:"HardnessPlus"}]}}} run function technical_anvil:extraction_mode/interaction/update_input/shield_hardnessplus_remove

execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"AntiKnockback"}]}}]} unless data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"HardnessPlus"}]}}]} run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers

execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"HardnessPlus"}]}}]} unless data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"AntiKnockback"}]}}]} run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers

