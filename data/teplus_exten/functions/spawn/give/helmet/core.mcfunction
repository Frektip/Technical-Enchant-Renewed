scoreboard players set $min random 0
scoreboard players set $max random 9
function enchantplus:random_uniform

#Randomly give a helmet, NOT NETHERITE OR TURTLE HELMET
execute if score $out random matches 0..3 run item replace entity @s armor.head with minecraft:leather_helmet{Enchantments:[{}]}
execute if score $out random matches 4..5 run item replace entity @s armor.head with minecraft:iron_helmet{Enchantments:[{}]}
execute if score $out random matches 6 run item replace entity @s armor.head with minecraft:chainmail_helmet{Enchantments:[{}]}
execute if score $out random matches 7..8 run item replace entity @s armor.head with minecraft:golden_helmet{Enchantments:[{}]}
execute if score $out random matches 9 run item replace entity @s armor.head with minecraft:diamond_helmet{Enchantments:[{}]}

#Give Custom Enchantments
function teplus_exten:spawn/give/helmet/set_enchantments
data modify entity @s ArmorItems[3].tag.CustomEnchantments set from storage tepspw:ench CustomEnchantments
data remove storage tepspw:ench CustomEnchantments

#Set Lore
function teplus_exten:spawn/give/helmet/set_lore

#Set drop chances
execute if score #spwdrop_hel tepext.manager matches 0.. store result entity @s ArmorDropChances[3] float 0.01 run scoreboard players get #spwdrop_hel tepext.manager

tag @s add tepspw_hshel