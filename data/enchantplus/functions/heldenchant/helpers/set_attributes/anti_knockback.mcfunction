#Knockback Resistance Formulas
scoreboard players operation #at.an_kb teplus.data = #held.lvl teplus.data
scoreboard players operation #at.an_kb teplus.data *= #25const teplus.data

#Remove and readd the Attribute
data remove entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.knockback_resistance"}]

item modify entity @s weapon.mainhand enchantplus:set_attributes/base/knockback_resistance