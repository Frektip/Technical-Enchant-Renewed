scoreboard players set $min random 0
scoreboard players set $max random 9
function enchantplus:random_uniform

#Randomly give a chestplate, NOT NETHERITE
execute if score $out random matches 0..3 run item replace entity @s armor.chest with leather_chestplate{Enchantments:[{}]}
execute if score $out random matches 4..5 run item replace entity @s armor.chest with iron_chestplate{Enchantments:[{}]}
execute if score $out random matches 6 run item replace entity @s armor.chest with chainmail_chestplate{Enchantments:[{}]}
execute if score $out random matches 7..8 run item replace entity @s armor.chest with golden_chestplate{Enchantments:[{}]}
execute if score $out random matches 9 run item replace entity @s armor.chest with diamond_chestplate{Enchantments:[{}]}

#Give Custom Enchantments
function teplus_exten:spawn/give/chestplate/set_enchantments
data modify entity @s ArmorItems[2].tag.CustomEnchantments set from storage tepspw:ench CustomEnchantments
data remove storage tepspw:ench CustomEnchantments

#Set Lore
function teplus_exten:spawn/give/chestplate/set_lore

#Set drop chances
execute if score #spwdrop_cht tepext.manager matches 0.. store result entity @s ArmorDropChances[2] float 0.01 run scoreboard players get #spwdrop_cht tepext.manager

tag @s add tepspw_hschs