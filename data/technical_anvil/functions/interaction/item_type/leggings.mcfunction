#----GIVE ERROR BY DEFAULT----#
tag @s add ComError
#-------------EXCLUSIVE FOR LEGGINGS-------------#
execute if score #leap Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"Leaping"}] run function technical_anvil:interaction/merge/enchanted_items/leaping
execute if score #smpl Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"SwimPlus"}] run function technical_anvil:interaction/merge/enchanted_items/swim_plus
execute if score #lstlf Enchopts matches 0 if data storage teplus:tech_anvil.ench TeplusEnchantments[{id:"LastLife"}] run function technical_anvil:interaction/merge/enchanted_items/last_life

execute if score $Exceed tepext.manager matches 0 if data storage teplus:tech_anvil.ench TeplusVanilla[{id:"minecraft:swift_sneak"}] run function teplus_exten:exceed/combine/items/swift_sneak

#-------------SHARED ENCHANTMENTS-------------#
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_protection
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_thorns
execute if score $Exceed tepext.manager matches 0 run function technical_anvil:interaction/item_type/shared_enchantments/vanilla/shared_unbreaking

function technical_anvil:interaction/item_type/shared_enchantments/shared_recovery
function technical_anvil:interaction/item_type/shared_enchantments/shared_fragile
function technical_anvil:interaction/item_type/shared_enchantments/shared_sensitive