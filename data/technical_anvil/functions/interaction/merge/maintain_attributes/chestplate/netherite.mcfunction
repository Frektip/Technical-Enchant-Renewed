##Change or not Armor, Knockback Resistance or Armor Thoughness attributes
execute store result score .original attb.armor run data get storage teplus:attribute Base[{AttributeName:"minecraft:generic.armor"}].Amount 100
execute store result score @s attb.armor run data get entity @s Items[{Slot:22b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor"}].Amount 100

execute store result score .original attb.knbrs run data get storage teplus:attribute Base[{AttributeName:"minecraft:generic.knockback_resistance"}].Amount 100
execute store result score @s attb.knbrs run data get entity @s Items[{Slot:22b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.knockback_resistance"}].Amount 100

execute store result score .original attb.toug run data get storage teplus:attribute Base[{AttributeName:"minecraft:generic.armor_toughness"}].Amount 100
execute store result score @s attb.toug run data get entity @s Items[{Slot:22b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor_toughness"}].Amount 100


##Replace Armor, Armor tougness or Knockback Resistance attributes if the input item has
## higher Amounts than the one provided in the item modiffier (vanilla value)
execute if score .original attb.armor > @s attb.armor run data modify storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor"}].Amount set from storage teplus:attribute Base[{AttributeName:"minecraft:generic.armor"}].Amount

execute if score .original attb.knbrs > @s attb.knbrs run data modify storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.knockback_resistance"}].Amount set from storage teplus:attribute Base[{AttributeName:"minecraft:generic.knockback_resistance"}].Amount

execute if score .original attb.toug > @s attb.toug run data modify storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor_toughness"}].Amount set from storage teplus:attribute Base[{AttributeName:"minecraft:generic.armor_toughness"}].Amount

##Remove Armor, Armor Toughness and Knockback Resistance from storage
data remove storage teplus:attribute Base[{AttributeName:"minecraft:generic.armor"}]
data remove storage teplus:attribute Base[{AttributeName:"minecraft:generic.knockback_resistance"}]
data remove storage teplus:attribute Base[{AttributeName:"minecraft:generic.armor_toughness"}]

