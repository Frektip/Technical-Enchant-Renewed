#Remove ComError tag, because is a compatible enchantment
# this tag remove is for the items
tag @s remove ComError
#---------GET LEVELS OF BOTH SECTIONS---------#
# -TCHA.inpbk = the input is a book, seach for StoredEnchantments
# -TCHA.inpit = the input is an item, seach for Enchantments
execute store result score @s[tag=TCHA.inpbk] TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.StoredEnchantments[{id:"minecraft:feather_falling"}].lvl
execute store result score @s[tag=TCHA.inpit] TCHA.Section1 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:2b}].tag.Enchantments[{id:"minecraft:feather_falling"}].lvl
#If it has the tag "Is.same_item" means that the other item is the same
#  one as the one in Slot:2b.
# - !Is.same_item = book nbt = StoredCustomEnchantments
# - Is.same_item = item nbt = CustomEnchantments
execute store result score @s[tag=!Is.same_item] TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.StoredEnchantments[{id:"minecraft:feather_falling"}].lvl
execute store result score @s[tag=Is.same_item] TCHA.Section2 run data get storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.Enchantments[{id:"minecraft:feather_falling"}].lvl
#-------INCREASE LEVEL IF THEY MATCH-------#
#Section1 is the limit for this enchatment - Check options limit
execute if score @s TCHA.Section1 < #ecd.fefll tepext.manager if score @s TCHA.Section2 = @s TCHA.Section1 run scoreboard players add @s TCHA.Section1 1
#--CHOOSE THE LARGEST IF THEY DON'T MATCH--#
execute if score @s TCHA.Section2 > @s TCHA.Section1 run scoreboard players operation @s TCHA.Section1 = @s TCHA.Section2
#-------ADD ENCHANT IF IT RESULTITEM DOESN'T HAVE IT YET-------#
execute if entity @s[tag=TCHA.inpbk] unless data storage teplus:tech_anvil.ui ResultItem.tag.StoredEnchantments[{id:"minecraft:feather_falling"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.StoredEnchantments append value {id:"minecraft:feather_falling",lvl:1s}
execute if entity @s[tag=TCHA.inpit] unless data storage teplus:tech_anvil.ui ResultItem.tag.Enchantments[{id:"minecraft:feather_falling"}] run data modify storage teplus:tech_anvil.ui ResultItem.tag.Enchantments append value {id:"minecraft:feather_falling",lvl:1s}
#Add an nbt tag to diferentiate it from the rest
execute unless data storage teplus:tech_anvil.ui ResultItem.tag.MaxEnch run data modify storage teplus:tech_anvil.ui ResultItem.tag.MaxEnch set value 1b
#--------SET THE NEW ENCHANTMENT LEVEL--------#
execute if entity @s[tag=TCHA.inpbk] store result storage teplus:tech_anvil.ui ResultItem.tag.StoredEnchantments[{id:"minecraft:feather_falling"}].lvl short 1 run scoreboard players get @s TCHA.Section1
execute if entity @s[tag=TCHA.inpit] store result storage teplus:tech_anvil.ui ResultItem.tag.Enchantments[{id:"minecraft:feather_falling"}].lvl short 1 run scoreboard players get @s TCHA.Section1


#Tag the item
tag @s[tag=TCHA.inpit] add CEitm
tag @s[tag=TCHA.inpbk] add VEPApply
