tag @s remove ComError
#---------GET LEVELS OF BOTH SECTIONS---------#
execute store result score @s TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.Enchantments[{id:"minecraft:sharpness"}].lvl
#If it has the tag "TCHA.ItwIt" means that the other item is the same
#  one as the one in Slot:2b.
# - !TCHA.ItwIt = book nbt = StoredEnchantments
# - TCHA.ItwIt = item nbt = Enchantments
execute store result score @s[tag=!TCHA.ItwIt] TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredEnchantments[{id:"minecraft:sharpness"}].lvl
execute store result score @s[tag=TCHA.ItwIt] TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.Enchantments[{id:"minecraft:sharpness"}].lvl
#-------INCREASE LEVEL IF THEY MATCH-------#
#Section1 is the limit for this enchatment - Check options limit
execute if score @s TCHA.Section1 < #ecd.sharp tepext.manager if score @s TCHA.Section2 = @s TCHA.Section1 run scoreboard players add @s TCHA.Section1 1
#--CHOOSE THE LARGEST IF THEY DON'T MATCH--#
execute if score @s TCHA.Section2 > @s TCHA.Section1 run scoreboard players operation @s TCHA.Section1 = @s TCHA.Section2
#-------ADD ENCHANT IF IT RESULTITEM DOESN'T HAVE IT YET-------#
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.Enchantments[{id:"minecraft:sharpness"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.Enchantments append value {id:"minecraft:sharpness",lvl:1s}
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.MaxEnch run data modify storage teplus:tech_anvil.ui ResultItem.tag.MaxEnch set value 1b
#--------SET THE NEW ENCHANTMENT LEVEL--------#
execute store result storage teplus:tech_anvil.ui ResultItem.tag.Enchantments[{id:"minecraft:sharpness"}].lvl short 1 run scoreboard players get @s TCHA.Section1

#--In case it has Attack Speed--#
#If the enchantment is disabled, remove the Attributes
execute if score #aksp Enchopts matches 1 run data remove storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers

#If the enchantment is enabled
execute if score #aksp Enchopts matches 0 if data storage teplus:tech_anvil.ui ResultItem.tag.CustomEnchantments[{id:"AttackSpeed"}] run function technical_anvil:interaction/merge/item_with_book/attack_speed


tag @s add CEitm
