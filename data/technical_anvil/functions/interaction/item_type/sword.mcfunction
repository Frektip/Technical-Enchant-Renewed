#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR SWORD-------------#

execute if score #bobl Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"BloodyBlade"}] run function technical_anvil:interaction/merge/apply_enchantments/bloody_blade
execute if score #lstnd Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"LastStand"}] run function technical_anvil:interaction/merge/apply_enchantments/last_stand
execute if score #lfstl Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"LifeSteal"}] run function technical_anvil:interaction/merge/apply_enchantments/life_steal

execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:fire_aspect"}] run function teplus_exten:exceed/combine/fire_aspect
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:knockback"}] run function teplus_exten:exceed/combine/knockback
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:looting"}] run function teplus_exten:exceed/combine/looting
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:sweeping"}] run function teplus_exten:exceed/combine/sweeping


#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:smite"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:bane_of_arthropods"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{Enchantments:[{id:"minecraft:impaling"}]}}} unless data storage teplus:tech_anvil.ui {ResultItem:{tag:{CustomEnchantments:[{id:"AttackSpeed"}]}}} if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:sharpness"}] run function teplus_exten:exceed/combine/sharpness
execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:unbreaking"}] run function teplus_exten:exceed/combine/unbreaking

execute if score #antexp Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AntiExplosion"}] run function technical_anvil:interaction/merge/apply_enchantments/anti_explosion
execute if score #aksp Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"AttackSpeed"}] unless data storage teplus:tech_anvil.ui ResultItem.tag.Enchantments[{id:"minecraft:sharpness"}] run function technical_anvil:interaction/merge/apply_enchantments/attack_speed
execute if score #pst Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"PoisonAspect"}] run function technical_anvil:interaction/merge/apply_enchantments/poison_aspect
execute if score #xpbt Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"XpBoost"}] run function technical_anvil:interaction/merge/apply_enchantments/xp_boost

execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fear"}] run function technical_anvil:interaction/merge/apply_enchantments/fear
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Fragile"}] run function technical_anvil:interaction/merge/apply_enchantments/fragile
execute if data storage teplus:tech_anvil.ench TeplusCurses[{id:"Slippery"}] run function technical_anvil:interaction/merge/apply_enchantments/slippery
