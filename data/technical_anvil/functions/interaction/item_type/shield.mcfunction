#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR SHIELD-------------#
execute if score #atkb Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AntiKnockback"}] run function technical_anvil:interaction/merge/apply_enchantments/anti_knockback
execute if score #hdns Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"HardnessPlus"}] run function technical_anvil:interaction/merge/apply_enchantments/hardness_plus
execute if score #pks Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Peaks"}] run function technical_anvil:interaction/merge/apply_enchantments/peaks
execute if score #trsf Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"TurtleStiffness"}] run function technical_anvil:interaction/merge/apply_enchantments/turtle_stiffness

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:efficiency"}] run function teplus_exten:exceed/combine/unbreaking

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Sensitive"}] run function technical_anvil:interaction/merge/apply_enchantments/sensitive