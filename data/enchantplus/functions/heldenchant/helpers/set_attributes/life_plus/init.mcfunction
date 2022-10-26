#Check first if the item doesn't have any attribute (vanilla)
execute unless data entity @s HandItems[0].tag.AttributeModifiers run function enchantplus:heldenchant/helpers/set_attributes/life_plus/add_base

#Max Heatlh Formulas
scoreboard players operation #at.mx_hlt teplus.data = #held.lvl teplus.data

scoreboard players operation #at.mx_hlt teplus.data *= #4const teplus.data

#Remove and readd the Attribute
data remove entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health"}]

item modify entity @s weapon.mainhand enchantplus:set_attributes/base/max_health
