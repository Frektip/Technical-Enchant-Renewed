scoreboard players set $min random 0
scoreboard players set $max random 1
function enchantplus:random_uniform

#Maybe it could add another special trade???
execute if score $out random matches 0 run function teplus_exten:villagers/generate_trades/special/isolated_core
execute if score $out random matches 1 run function teplus_exten:villagers/generate_trades/special/blessed_orb

#Tag to max out the villager
tag @s add tepxv.tradend
tag @s add tepxv.special