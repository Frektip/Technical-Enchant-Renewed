#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR BOOTS-------------#
execute if score #aglt Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Agility"}] run function technical_anvil:interaction/merge/apply_enchantments/agility
execute if score #dasher Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Dasher"}] run function technical_anvil:interaction/merge/apply_enchantments/dasher
execute if score #skwk Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"SkyWalk"}] run function technical_anvil:interaction/merge/apply_enchantments/sky_walk


execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:feather_falling"}] run function teplus_exten:exceed/combine/feather_falling

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:projectile_protection"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:fire_protection"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:blast_protection"}]}}} if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:protection"}] run function teplus_exten:exceed/combine/protection
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:thorns"}] run function teplus_exten:exceed/combine/thorns
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:unbreaking"}] run function teplus_exten:exceed/combine/unbreaking

execute if score #lvwk Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"LavaWalker"}] run function technical_anvil:interaction/merge/apply_enchantments/lava_walker

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Sensitive"}] run function technical_anvil:interaction/merge/apply_enchantments/sensitive