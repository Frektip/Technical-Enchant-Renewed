scoreboard players set $min random 0
scoreboard players set $max random 3
function enchantplus:random_uniform

#Randomly give a material (Not diamond or netherite)
execute if score $out random matches 0 run item replace entity @s weapon.mainhand with iron_hoe{Enchantments:[{}]}
execute if score $out random matches 1 run item replace entity @s weapon.mainhand with golden_hoe{Enchantments:[{}]}
execute if score $out random matches 2 run item replace entity @s weapon.mainhand with stone_hoe{Enchantments:[{}]}
execute if score $out random matches 3 run item replace entity @s weapon.mainhand with wooden_hoe{Enchantments:[{}]}
