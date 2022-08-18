scoreboard players set $min random 0
scoreboard players set $max random 3
function enchantplus:random_uniform

#Randomly give a material (Not diamond or netherite)
execute if score $out random matches 0 run item replace entity @s weapon.mainhand with minecraft:iron_axe{Enchantments:[{}]}
execute if score $out random matches 1 run item replace entity @s weapon.mainhand with minecraft:golden_axe{Enchantments:[{}]}
execute if score $out random matches 2 run item replace entity @s weapon.mainhand with minecraft:stone_axe{Enchantments:[{}]}
execute if score $out random matches 3 run item replace entity @s weapon.mainhand with minecraft:wooden_axe{Enchantments:[{}]}
