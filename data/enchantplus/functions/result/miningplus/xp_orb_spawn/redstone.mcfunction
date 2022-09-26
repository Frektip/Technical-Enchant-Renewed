scoreboard players set $min random 0
scoreboard players set $max random 4
function enchantplus:random_uniform

execute if score $out random matches 0 run summon experience_orb ~ ~ ~ {Value:1}

execute if score $out random matches 1 run summon experience_orb ~ ~ ~ {Value:2}

execute if score $out random matches 2 run summon experience_orb ~ ~ ~ {Value:3}

execute if score $out random matches 3 run summon experience_orb ~ ~ ~ {Value:4}

execute if score $out random matches 4 run summon experience_orb ~ ~ ~ {Value:5}
