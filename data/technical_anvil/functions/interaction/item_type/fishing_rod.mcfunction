#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR FISHING ROD-------------#

execute if score #sptr Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Splatter"}] run function technical_anvil:interaction/merge/apply_enchantments/splatter

execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:luck_of_the_sea"}] run function teplus_exten:exceed/combine/luck_of_the_sea
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:lure"}] run function teplus_exten:exceed/combine/lure

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:unbreaking"}] run function teplus_exten:exceed/combine/unbreaking

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Exhaustion"}] run function technical_anvil:interaction/merge/apply_enchantments/exhaustion
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Slippery"}] run function technical_anvil:interaction/merge/apply_enchantments/slippery