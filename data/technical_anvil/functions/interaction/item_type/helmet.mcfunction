#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR HELMET-------------#
execute if score #brvis Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"BrightVision"}] run function technical_anvil:interaction/merge/apply_enchantments/bright_vision
execute if score #mgnt Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Magnet"}] run function technical_anvil:interaction/merge/apply_enchantments/magnet
execute if score #tmbrk Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"TimeBreaker"}] run function technical_anvil:interaction/merge/apply_enchantments/time_breaker


execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:respiration"}] run function teplus_exten:exceed/combine/respiration


#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:projectile_protection"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:fire_protection"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:blast_protection"}]}}} if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:protection"}] run function teplus_exten:exceed/combine/protection
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:thorns"}] run function teplus_exten:exceed/combine/thorns
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:unbreaking"}] run function teplus_exten:exceed/combine/unbreaking

execute if score #antexp Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AntiExplosion"}] run function technical_anvil:interaction/merge/apply_enchantments/anti_explosion

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Sensitive"}] run function technical_anvil:interaction/merge/apply_enchantments/sensitive