tag @s remove ComError
#---------GET LEVELS OF BOTH SECTIONS---------#
execute store result score @s TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.Enchantments[{id:"minecraft:lure"}].lvl
#If it has the tag "TCHA.ItwIt" means that the other item is the same
#  one as the one in Slot:2b.
# - !TCHA.ItwIt = book nbt = StoredEnchantments
# - TCHA.ItwIt = item nbt = Enchantments
execute store result score @s[tag=!TCHA.ItwIt] TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredEnchantments[{id:"minecraft:lure"}].lvl
execute store result score @s[tag=TCHA.ItwIt] TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.Enchantments[{id:"minecraft:lure"}].lvl
#-------INCREASE LEVEL IF THEY MATCH-------#
#Section1 is the limit for this enchatment - Check options limit
execute if score @s TCHA.Section1 < #ecd.lure tepext.manager if score @s TCHA.Section2 = @s TCHA.Section1 run scoreboard players add @s TCHA.Section1 1
#--CHOOSE THE LARGEST IF THEY DON'T MATCH--#
execute if score @s TCHA.Section2 > @s TCHA.Section1 run scoreboard players operation @s TCHA.Section1 = @s TCHA.Section2
#-------ADD ENCHANT IF IT RESULTITEM DOESN'T HAVE IT YET-------#
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.Enchantments[{id:"minecraft:lure"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.Enchantments append value {id:"minecraft:lure",lvl:1s}
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.MaxEnch run data modify storage teplus:tech_anvil.ui ResultItem.tag.MaxEnch set value 1b
#--------SET THE NEW ENCHANTMENT LEVEL--------#
execute store result storage teplus:tech_anvil.ui ResultItem.tag.Enchantments[{id:"minecraft:lure"}].lvl short 1 run scoreboard players get @s TCHA.Section1
tag @s add CEitm
