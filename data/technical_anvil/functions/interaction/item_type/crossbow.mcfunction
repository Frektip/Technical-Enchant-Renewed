#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR CROSSBOW-------------#

execute if score #frbw Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"FireballWave"}] run function technical_anvil:interaction/merge/apply_enchantments/fireball_wave
execute if score #skfg Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"ShockFangs"}] run function technical_anvil:interaction/merge/apply_enchantments/shock_fangs
execute if score #snp Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Sniper"}] run function technical_anvil:interaction/merge/apply_enchantments/sniper

execute if score $Exceed tepext.manager matches 0 unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:multishot"}]}}} if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:piercing"}] run function teplus_exten:exceed/combine/piercing

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:unbreaking"}] run function teplus_exten:exceed/combine/unbreaking

execute if score #accshot Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AccuracyShot"}] run function technical_anvil:interaction/merge/apply_enchantments/accuracy_shot

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fear"}] run function technical_anvil:interaction/merge/apply_enchantments/fear
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Slippery"}] run function technical_anvil:interaction/merge/apply_enchantments/slippery