#Check first if the item doesn't have any attribute (vanilla)
execute unless data entity @s HandItems[0].tag.AttributeModifiers run function enchantplus:heldenchant/helpers/set_attributes/agility/add_base

#Movement Speed Formulas
scoreboard players operation #mulof3 teplus.data = #held.lvl teplus.data
scoreboard players operation #mulof3 teplus.data %= #3const teplus.data

scoreboard players operation #at.mov_sp teplus.data = #held.lvl teplus.data

scoreboard players operation #at.mov_sp teplus.data *= #33const teplus.data
#if it reaches 99, add one to make it 100%
execute if score #mulof3 teplus.data matches 0 run scoreboard players add #at.mov_sp teplus.data 1

#Remove and readd the Attribute
data remove entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.movement_speed"}]

item modify entity @s weapon.mainhand enchantplus:set_attributes/base/speed
