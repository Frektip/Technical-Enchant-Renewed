scoreboard players set $min random 0
scoreboard players set $max random 9
function enchantplus:random_uniform

#Randomly give leggins, NOT NETHERITE
execute if score $out random matches 0..3 run item replace entity @s armor.legs with minecraft:leather_leggings{Enchantments:[{}]}
execute if score $out random matches 4..5 run item replace entity @s armor.legs with minecraft:iron_leggings{Enchantments:[{}]}
execute if score $out random matches 6 run item replace entity @s armor.legs with minecraft:chainmail_leggings{Enchantments:[{}]}
execute if score $out random matches 7..8 run item replace entity @s armor.legs with minecraft:golden_leggings{Enchantments:[{}]}
execute if score $out random matches 9 run item replace entity @s armor.legs with minecraft:diamond_leggings{Enchantments:[{}]}

#Give Custom Enchantments
function teplus_exten:spawn/give/leggings/set_enchantments
data modify entity @s ArmorItems[1].tag.CustomEnchantments set from storage tepspw:ench CustomEnchantments
data remove storage tepspw:ench CustomEnchantments

#Set Lore
function teplus_exten:spawn/give/leggings/set_lore

#Set drop chances
execute if score #spwdrop_leg tepext.manager matches 0.. store result entity @s ArmorDropChances[1] float 0.01 run scoreboard players get #spwdrop_leg tepext.manager

tag @s add tepspw_hslgn