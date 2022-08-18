scoreboard players set $min random 0
scoreboard players set $max random 9
function enchantplus:random_uniform

#Randomly give boots, NOT NETHERITE
execute if score $out random matches 0..3 run item replace entity @s armor.feet with leather_boots{Enchantments:[{}]}
execute if score $out random matches 4..5 run item replace entity @s armor.feet with iron_boots{Enchantments:[{}]}
execute if score $out random matches 6 run item replace entity @s armor.feet with chainmail_boots{Enchantments:[{}]}
execute if score $out random matches 7..8 run item replace entity @s armor.feet with golden_boots{Enchantments:[{}]}
execute if score $out random matches 9 run item replace entity @s armor.feet with diamond_boots{Enchantments:[{}]}

#Give Custom Enchantments
function teplus_exten:spawn/give/boots/set_enchantments
data modify entity @s ArmorItems[0].tag.CustomEnchantments set from storage tepspw:ench CustomEnchantments
data remove storage tepspw:ench CustomEnchantments

#Set Lore
function teplus_exten:spawn/give/boots/set_lore

#Set drop chances
execute if score #spwdrop_feet tepext.manager matches 0.. store result entity @s ArmorDropChances[0] float 0.01 run scoreboard players get #spwdrop_feet tepext.manager

tag @s add tepspw_hsbt