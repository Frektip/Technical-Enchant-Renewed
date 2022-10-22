#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR HOE-------------#

execute if score #gndtl Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"GrandTilling"}] run function technical_anvil:interaction/merge/apply_enchantments/grand_tilling
execute if score #hrvpl Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"HarvestingPlus"}] run function technical_anvil:interaction/merge/apply_enchantments/harvesting_plus
execute if score #rplt Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Replant"}] run function technical_anvil:interaction/merge/apply_enchantments/replant
execute if score #sytr Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Scyther"}] run function technical_anvil:interaction/merge/apply_enchantments/scyther
execute if score #slrp Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"SoulReaper"}] run function technical_anvil:interaction/merge/apply_enchantments/soul_reaper

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:efficiency"}] run function teplus_exten:exceed/combine/efficiency
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:fortune"}] run function teplus_exten:exceed/combine/fortune
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:unbreaking"}] run function teplus_exten:exceed/combine/unbreaking

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Exhaustion"}] run function technical_anvil:interaction/merge/apply_enchantments/exhaustion
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Slippery"}] run function technical_anvil:interaction/merge/apply_enchantments/slippery