#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR LEGGINGS-------------#
execute if score #leap Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Leaping"}] run function technical_anvil:interaction/merge/apply_enchantments/leaping
execute if score #smpl Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"SwimPlus"}] run function technical_anvil:interaction/merge/apply_enchantments/swim_plus
execute if score #lstlf Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"LastLife"}] run function technical_anvil:interaction/merge/apply_enchantments/last_life

execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:swift_sneak"}] run function teplus_exten:exceed/combine/swift_sneak

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:projectile_protection"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:fire_protection"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:blast_protection"}]}}} if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:protection"}] run function teplus_exten:exceed/combine/protection
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:thorns"}] run function teplus_exten:exceed/combine/thorns
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:unbreaking"}] run function teplus_exten:exceed/combine/unbreaking

execute if score #rcv Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Recovery"}] run function technical_anvil:interaction/merge/apply_enchantments/recovery

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Sensitive"}] run function technical_anvil:interaction/merge/apply_enchantments/sensitive