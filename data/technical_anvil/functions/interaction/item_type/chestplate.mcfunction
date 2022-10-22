#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR CHESTPLATE-------------#
execute if score #autfd Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AutoFeed"}] run function technical_anvil:interaction/merge/apply_enchantments/auto_feed
execute if score #flskn Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"FlamingSkin"}] run function technical_anvil:interaction/merge/apply_enchantments/flaming_skin
execute if score #lfps Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"LifePlus"}] run function technical_anvil:interaction/merge/apply_enchantments/life_plus

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:projectile_protection"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:fire_protection"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:blast_protection"}]}}} if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:protection"}] run function teplus_exten:exceed/combine/protection
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:thorns"}] run function teplus_exten:exceed/combine/thorns
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:unbreaking"}] run function teplus_exten:exceed/combine/unbreaking

execute if score #antvn Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AntiVenom"}] run function technical_anvil:interaction/merge/apply_enchantments/anti_venom

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Sensitive"}] run function technical_anvil:interaction/merge/apply_enchantments/sensitive