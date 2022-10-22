#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR TRIDENT-------------#

execute if score #mrgc Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"MarineGrace"}] run function technical_anvil:interaction/merge/apply_enchantments/marine_grace
execute if score #wtjt Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Waterjet"}] run function technical_anvil:interaction/merge/apply_enchantments/waterjet

execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:impaling"}] run function teplus_exten:exceed/combine/impaling
execute if score $Exceed tepext.manager matches 0 unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:loyalty"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:channeling"}]}}} if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:riptide"}] run function teplus_exten:exceed/combine/riptide

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:smite"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:bane_of_arthropods"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:impaling"}]}}} if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:sharpness"}] run function teplus_exten:exceed/combine/sharpness
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:unbreaking"}] run function teplus_exten:exceed/combine/unbreaking

execute if score #aksp Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AttackSpeed"}] run function technical_anvil:interaction/merge/apply_enchantments/attack_speed
execute if score #pst Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"PoisonAspect"}] run function technical_anvil:interaction/merge/apply_enchantments/poison_aspect
execute if score #xpbt Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"XpBoost"}] run function technical_anvil:interaction/merge/apply_enchantments/xp_boost

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fear"}] run function technical_anvil:interaction/merge/apply_enchantments/fear
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Slippery"}] run function technical_anvil:interaction/merge/apply_enchantments/slippery