##Remove enchantment attributes
data remove storage teplus:attribute Base[{AttributeName:"minecraft:generic.attack_speed"}]

##Change or not Attack damage attribute
# -We do this by storing the value of the modifier
execute store result score .original attb.dmg run data get storage teplus:attribute Base[{AttributeName:"minecraft:generic.attack_damage"}].Amount 100
execute store result score @s attb.dmg run data get entity @s Items[{Slot:22b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage"}].Amount 100


##Replace attack damage attribute if the input item has
## higher Amounts than the one provided in the item modiffier (vanilla value)
execute if score .original attb.dmg > @s attb.dmg run data modify storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage"}].Amount set from storage teplus:attribute Base[{AttributeName:"minecraft:generic.attack_damage"}].Amount


##Remove Armor, Armor toughness and Knockback Resistance from storage
data remove storage teplus:attribute Base[{AttributeName:"minecraft:generic.attack_damage"}]

#Add new attributes to ResultItem storage
data modify storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers append from storage teplus:attribute Base[]

data remove storage teplus:attribute Base