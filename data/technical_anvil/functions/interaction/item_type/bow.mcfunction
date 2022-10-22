#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR BOW-------------#

execute if score #arch Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Arachnid"}] run function technical_anvil:interaction/merge/apply_enchantments/arachnid
execute if score #expl Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Explosive"}] run function technical_anvil:interaction/merge/apply_enchantments/explosive

execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:power"}] run function teplus_exten:exceed/combine/power
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:punch"}] run function teplus_exten:exceed/combine/punch

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:unbreaking"}] run function teplus_exten:exceed/combine/unbreaking

execute if score #accshot Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AccuracyShot"}] run function technical_anvil:interaction/merge/apply_enchantments/accuracy_shot
execute if score #antexp Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AntiExplosion"}] run function technical_anvil:interaction/merge/apply_enchantments/anti_explosion

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fear"}] run function technical_anvil:interaction/merge/apply_enchantments/fear
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Slippery"}] run function technical_anvil:interaction/merge/apply_enchantments/slippery