#Store the base attribute amount
execute store result storage teplus:shrpatt Amount double 0.001 run data get entity @s Items[{Slot:22b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage"}].Amount 10000

#Compy it into an storage
execute store result score #teplus.attib.amnt teplus.data run data get storage teplus:shrpatt Amount

#Store the current sharpness level
execute store result score #teplus.sharp.lvl teplus.data run data get storage teplus:tech_anvil.ui ResultItem.tag.Enchantments[{id:"minecraft:sharpness"}].lvl
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
execute store result entity @s Items[{Slot:22b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage"}].Amount double 0.1 run scoreboard players get #teplus.attib.out teplus.data

#Clear the storage
data remove storage teplus:shrpatt Amount