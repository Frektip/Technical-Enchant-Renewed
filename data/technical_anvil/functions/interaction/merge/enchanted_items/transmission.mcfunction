#Remove ComError tag, because is a compatible enchantment
tag @s remove ComError
#---------GET LEVELS OF BOTH SECTIONS---------#
execute store result score @s TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.CustomEnchantments[{id:"Transmission"}].lvl
#If it has the tag "TCHA.ItwIt" means that the other item is the same
#  one as the one in Slot:2b.
# - !TCHA.ItwIt = book nbt = StoredCustomEnchantments
# - TCHA.ItwIt = item nbt = CustomEnchantments
execute store result score @s[tag=!TCHA.ItwIt] TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredCustomEnchantments[{id:"Transmission"}].lvl
execute store result score @s[tag=TCHA.ItwIt] TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.CustomEnchantments[{id:"Transmission"}].lvl
#-------INCREASE LEVEL IF THEY MATCH-------#
#Section1 is the limit for this enchatment
execute if entity @s[scores={TCHA.Section1=..4}] if score @s TCHA.Section2 = @s TCHA.Section1 run scoreboard players add @s TCHA.Section1 1
#--CHOOSE THE LARGEST IF THEY DON'T MATCH--#
execute if score @s TCHA.Section2 > @s TCHA.Section1 run scoreboard players operation @s TCHA.Section1 = @s TCHA.Section2
#-------ADD ENCHANT IF IT RESULTITEM DOESN'T HAVE IT YET-------#
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"Transmission"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments append value {id:"Transmission",lvl:1}
#--------SET THE NEW ENCHANTMENT LEVEL--------#
execute store result storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"Transmission"}].lvl int 1 run scoreboard players get @s TCHA.Section1
tag @s add CEitm