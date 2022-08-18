#Store the base attribute amount
execute store result score #teplus.attib.amnt teplus.data run data get entity @s Item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage"}].Amount
#Scale it by 10
scoreboard players operation #teplus.attib.amnt teplus.data *= #10const teplus.data

#Store the current sharpness level
execute store result score #teplus.sharp.lvl teplus.data run data get entity @s Item.tag.Enchantments[{id:"minecraft:sharpness"}].lvl
#Scale it by 10
scoreboard players operation #teplus.sharp.lvl teplus.data *= #10const teplus.data

#-----Sharpness Formula-----#
#(0.5*level+0.5)
scoreboard players operation #teplus.sharp.lvl teplus.data /= #2const teplus.data
scoreboard players operation #teplus.sharp.lvl teplus.data += #5const teplus.data

scoreboard players operation #teplus.attib.amnt teplus.data += #teplus.sharp.lvl teplus.data

#---Set the new attack Damage Amount---#
#Copy the value to another fake player (just in case)
scoreboard players operation #teplus.attib.out teplus.data = #teplus.attib.amnt teplus.data

#Set the new damage value in the item
execute store result entity @s Item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage"}].Amount double 0.1 run scoreboard players get #teplus.attib.out teplus.data
