#Reset always to the default Vanilla attributes
data remove entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_speed"}]
data remove entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage"}]

function enchantplus:heldenchant/helpers/set_attributes/attack_speed/add_base

#Attack Speed Formulas
#Use an storage for this case because attack speed can be decimal
# from the start
execute store result storage teplus:at_spd Amount double 0.001 run data get entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_speed"}].Amount 10000

execute store result score #at.atk_sp teplus.data run data get storage teplus:at_spd Amount

scoreboard players operation #at.lvl teplus.data = #held.lvl teplus.data
scoreboard players operation #at.lvl teplus.data *= #3const teplus.data

scoreboard players operation #at.atk_sp teplus.data += #at.lvl teplus.data

#Set the new Amount value
execute store result entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_speed"}].Amount double 0.1 run scoreboard players get #at.atk_sp teplus.data

#Clear storage
data remove storage teplus:at_spd Amount

#In case the item has Sharpness enchantment
execute if data entity @s HandItems[0].tag.Enchantments[{id:"minecraft:sharpness"}] run function enchantplus:heldenchant/helpers/sharpness_damage