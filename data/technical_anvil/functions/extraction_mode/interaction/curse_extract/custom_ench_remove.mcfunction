# -Copy the input item Lore and remove ONLY the custom enchantment Lore Part. Do it just for vanilla curse extraction
execute if entity @s[tag=techanv.vanilla] run data modify storage teplus:item_lore ExtractLore set from entity @s Items[{Slot:10b}].tag.display.Lore
execute if entity @s[tag=techanv.vanilla] run function #technical_anvil:extraction_mode/remove_custom_lore

# -Update properly the lore
execute if entity @s[tag=techanv.vanilla] run function technical_anvil:extraction_mode/edit_lore/input_item

#Update the input (special case) item based on the first custom enchantment
#Check only for bow input
execute if data entity @s {Items:[{Slot:10b,id:"minecraft:bow"}]} run function #technical_anvil:extraction_mode/bowcross_check

#Check only for crossbow input
execute if data entity @s {Items:[{Slot:10b,id:"minecraft:crossbow"}]} run function #technical_anvil:extraction_mode/bowcross_check

#Check for special enchantments to remove their attributes
data modify storage teplus:tech_extract First[] set from entity @s Items[{Slot:10b}].tag.CustomEnchantments[0]

execute if data storage teplus:tech_extract First[{id:"Agility"}] run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers

execute if data storage teplus:tech_extract First[{id:"Armored"}] run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers

execute if data storage teplus:tech_extract First[{id:"AntiKnockback"}] run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.knockback_resistance"}]

execute if data storage teplus:tech_extract First[{id:"AttackSpeed"}] run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers

execute if data storage teplus:tech_extract First[{id:"HardnessPlus"}] run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor_toughness"}]

execute if data storage teplus:tech_extract First[{id:"LifePlus"}] run data remove entity @s Items[{Slot:10b}].tag.AttributeModifiers

data remove entity @s Items[{Slot:10b}].tag.CustomEnchantments[0]
