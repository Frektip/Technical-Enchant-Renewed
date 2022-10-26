#Armor Formulas
scoreboard players operation #at.armor teplus.data = #held.lvl teplus.data
scoreboard players operation #at.armor teplus.data *= #2const teplus.data

#Kept it at level IV = 8 armor points, same as a diamond/netherite chestplate
execute if score #at.armor teplus.data matches 9.. run scoreboard players set #at.armor teplus.data 8

#Remove and readd the Attribute
data remove entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor"}]

item modify entity @s weapon.mainhand enchantplus:set_attributes/base/armor