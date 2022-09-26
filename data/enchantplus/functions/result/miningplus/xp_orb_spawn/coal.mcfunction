scoreboard players set $min random 0
scoreboard players set $max random 2
function enchantplus:random_uniform

execute if score $out random matches 1 run summon experience_orb ~ ~ ~ {Value:1}

execute if score $out random matches 2 run summon experience_orb ~ ~ ~ {Value:2}
