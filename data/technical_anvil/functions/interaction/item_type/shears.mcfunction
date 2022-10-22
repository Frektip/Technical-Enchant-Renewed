#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR SHEARS-------------#

execute if score #mlcl Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Multicolor"}] run function technical_anvil:interaction/merge/apply_enchantments/multicolor

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:efficiency"}] run function teplus_exten:exceed/combine/efficiency
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:unbreaking"}] run function teplus_exten:exceed/combine/unbreaking

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Exhaustion"}] run function technical_anvil:interaction/merge/apply_enchantments/exhaustion
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Slippery"}] run function technical_anvil:interaction/merge/apply_enchantments/slippery