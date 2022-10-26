#Armor Toughness Formulas
scoreboard players operation #at.ar_tgh teplus.data = #held.lvl teplus.data
scoreboard players add #at.ar_tgh teplus.data 1

#Remove and readd the Attribute
data remove entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor_toughness"}]

item modify entity @s weapon.mainhand enchantplus:set_attributes/base/armor_toughness