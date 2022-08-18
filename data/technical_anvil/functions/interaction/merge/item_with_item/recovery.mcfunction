#Remove ComError tag, because is a compatible enchantment
tag @s remove ComError
#---------GET LEVELS OF BOTH SECTIONS---------#
execute store result score @s TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.CustomEnchantments[{id:"Recovery"}].lvl
execute store result score @s TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Recovery"}].lvl
#-------INCREASE LEVEL IF THEY MATCH-------#
#Section1 is the limit for this enchatment
execute if entity @s[scores={TCHA.Section1=..1}] if score @s TCHA.Section2 = @s TCHA.Section1 run scoreboard players add @s TCHA.Section1 1
#--CHOOSE THE LARGEST IF THEY DON'T MATCH--#
execute if score @s TCHA.Section2 > @s TCHA.Section1 run scoreboard players operation @s TCHA.Section1 = @s TCHA.Section2
#-------ADD ENCHANT IF IT RESULTITEM DOESN'T HAVE IT YET-------#
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"Recovery"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments append value {id:"Recovery",lvl:1}
#--------SET THE NEW ENCHANTMENT LEVEL--------#
execute store result storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"Recovery"}].lvl int 1 run scoreboard players get @s TCHA.Section1
tag @s add CEitm