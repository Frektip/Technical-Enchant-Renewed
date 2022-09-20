scoreboard players set $min random 0
scoreboard players set $max random 5
function enchantplus:random_uniform

#Randomly enchant the item based on predicates

execute if score $out random matches 0 unless data entity @s[tag=!tepspw_hshel] ArmorItems[3].tag.CustomEnchantments run function teplus_exten:spawn/give/helmet/core
execute if score $out random matches 1 unless data entity @s[tag=!tepspw_hschs] ArmorItems[2].tag.CustomEnchantments run function teplus_exten:spawn/give/chestplate/core
execute if score $out random matches 2 unless data entity @s[tag=!tepspw_hslgn] ArmorItems[1].tag.CustomEnchantments run function teplus_exten:spawn/give/leggings/core
execute if score $out random matches 3 unless data entity @s[tag=!tepspw_hsbt] ArmorItems[0].tag.CustomEnchantments run function teplus_exten:spawn/give/boots/core

execute if score $out random matches 4 unless data entity @s[tag=!tepspw_hsmh] HandItems[0].tag.CustomEnchantments run function teplus_exten:spawn/give/mainhand/type
execute if score $out random matches 5 unless data entity @s[tag=!tepspw_hsofh] HandItems[1].tag.CustomEnchantments run function teplus_exten:spawn/give/offhand/type




tag @s add tepspw_cenit

###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"A hostile mob has received TE+ enchanted gear","color":"gray","italic":true,"bold":false}]

execute if predicate enchantplus:random_chance/25 run function teplus_exten:spawn/modify_items