#==========================================#
#---------GET LEVELS OF BOTH ITEMS---------#
execute store result score @s TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.StoredCustomEnchantments[{id:"LifePlus"}].lvl
execute store result score @s TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"LifePlus"}].lvl
#-------INCREASE LEVEL IF THEY MATCH-------#
#execute if score @s TCHA.Section2 = @s TCHA.Section1 run scoreboard players add @s TCHA.Section1 1
execute if entity @s[scores={TCHA.Section1=..4}] if score @s TCHA.Section2 = @s TCHA.Section1 run scoreboard players add @s TCHA.Section1 1
#--CHOOSE THE LARGEST IF THEY DON'T MATCH--#
execute if score @s TCHA.Section2 > @s TCHA.Section1 run scoreboard players operation @s TCHA.Section1 = @s TCHA.Section2
#-------ADD ENCHANT IF NOT ON ITEM 1-------#
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[{id:"LifePlus"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments append value {id:"LifePlus",lvl:1}
#--------SET LEVEL TO DECIDED VALUE--------#
execute store result storage teplus:tech_anvil.ui ResultItem.tag.StoredCustomEnchantments[{id:"LifePlus"}].lvl int 1 run scoreboard players get @s TCHA.Section1
tag @s add CEnchApply