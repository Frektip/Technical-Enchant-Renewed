scoreboard players set $min random 0
scoreboard players set $max random 3
function enchantplus:random_uniform

#Randomly give a material (Not diamond or netherite)
execute if score $out random matches 0 run item replace entity @s weapon.offhand with iron_shovel{Enchantments:[{}]}
execute if score $out random matches 1 run item replace entity @s weapon.offhand with golden_shovel{Enchantments:[{}]}
execute if score $out random matches 2 run item replace entity @s weapon.offhand with stone_shovel{Enchantments:[{}]}
execute if score $out random matches 3 run item replace entity @s weapon.offhand with wooden_shovel{Enchantments:[{}]}
