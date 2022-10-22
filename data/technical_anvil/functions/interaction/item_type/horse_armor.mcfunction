#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#---- NO EXCLUSIVE ENCHANTMENTS?? ----#
# ¯\_( ͡o ͜ʖ ͡O)_/¯
#But at least you can combine it with frost walker :)
execute if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:frost_walker"}] run function technical_anvil:interaction/merge/apply_enchantments/frost_walker

#And with feather falling, respiration and thorns if Exceed enchantments
# option is enabled
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:feather_falling"}] run function teplus_exten:exceed/combine/feather_falling
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:thorns"}] run function teplus_exten:exceed/combine/thorns

#-------------SHARED ENCHANTMENTS-------------#
execute if score #antexp Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AntiExplosion"}] run function technical_anvil:interaction/merge/apply_enchantments/anti_explosion
execute if score #antvn Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AntiVenom"}] run function technical_anvil:interaction/merge/apply_enchantments/anti_venom
execute if score #flskn Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"FlamingSkin"}] run function technical_anvil:interaction/merge/apply_enchantments/flaming_skin
execute if score #lvwk Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"LavaWalker"}] run function technical_anvil:interaction/merge/apply_enchantments/lava_walker
execute if score #rcv Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Recovery"}] run function technical_anvil:interaction/merge/apply_enchantments/recovery

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Sensitive"}] run function technical_anvil:interaction/merge/apply_enchantments/sensitive