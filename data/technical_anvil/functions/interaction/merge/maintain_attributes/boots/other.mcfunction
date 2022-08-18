##Change or not Armor attributes
execute store result score .original attb.armor run data get storage teplus:attribute Base[{AttributeName:"minecraft:generic.armor"}].Amount 100
execute store result score @s attb.armor run data get entity @s Items[{Slot:22b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor"}].Amount 100


##Replace Armor if the input item has
## higher Amounts than the one provided in the item modiffier (vanilla value)
execute if score .original attb.armor > @s attb.armor run data modify storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor"}].Amount set from storage teplus:attribute Base[{AttributeName:"minecraft:generic.armor"}].Amount

##Remove Armor from storage
data remove storage teplus:attribute Base[{AttributeName:"minecraft:generic.armor"}]