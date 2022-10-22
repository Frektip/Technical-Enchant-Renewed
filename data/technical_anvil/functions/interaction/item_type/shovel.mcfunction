#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR SHOVEL-------------#

execute if score #bgpt Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"BigPath"}] run function technical_anvil:interaction/merge/apply_enchantments/big_path
execute if score #exc Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Excavator"}] run function technical_anvil:interaction/merge/apply_enchantments/excavator

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:efficiency"}] run function teplus_exten:exceed/combine/efficiency
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:fortune"}] run function teplus_exten:exceed/combine/fortune
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:unbreaking"}] run function teplus_exten:exceed/combine/unbreaking

execute if score #autsml Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AutoSmelt"}] run function technical_anvil:interaction/merge/apply_enchantments/auto_smelt
execute if score #haste Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Haste"}] run function technical_anvil:interaction/merge/apply_enchantments/haste

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Exhaustion"}] run function technical_anvil:interaction/merge/apply_enchantments/exhaustion
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Slippery"}] run function technical_anvil:interaction/merge/apply_enchantments/slippery