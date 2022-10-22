#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR AXE-------------#

execute if score #chop Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Chopping"}] run function technical_anvil:interaction/merge/apply_enchantments/chopping
execute if score #tmbr Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Timber"}] run function technical_anvil:interaction/merge/apply_enchantments/timber
execute if score #trms Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Transmission"}] run function technical_anvil:interaction/merge/apply_enchantments/transmission
execute if score #strk Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Striker"}] run function technical_anvil:interaction/merge/apply_enchantments/striker

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:efficiency"}] run function teplus_exten:exceed/combine/efficiency
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:fortune"}] run function teplus_exten:exceed/combine/fortune
execute if score $Exceed tepext.manager matches 0 unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:smite"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:bane_of_arthropods"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:impaling"}]}}} if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:sharpness"}] run function teplus_exten:exceed/combine/sharpness
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:unbreaking"}] run function teplus_exten:exceed/combine/unbreaking

execute if score #autsml Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AutoSmelt"}] run function technical_anvil:interaction/merge/apply_enchantments/auto_smelt
execute if score #haste Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Haste"}] run function technical_anvil:interaction/merge/apply_enchantments/haste
execute if score #xpbt Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"XpBoost"}] run function technical_anvil:interaction/merge/apply_enchantments/xp_boost

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Exhaustion"}] run function technical_anvil:interaction/merge/apply_enchantments/exhaustion
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fear"}] run function technical_anvil:interaction/merge/apply_enchantments/fear
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Slippery"}] run function technical_anvil:interaction/merge/apply_enchantments/slippery