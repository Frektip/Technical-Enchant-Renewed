#Get a random number
scoreboard players set $min random 1
execute store result score $max random run data get storage teplus:villagers Build.lvl
function enchantplus:random_uniform

#Set the new level, prevent getting the max level at once
execute if score $out random matches 2.. if score $out random = $max random run scoreboard players remove $out random 1
#Some random stuff to reduce the levels, don't do it it it is already 1
execute if score $out random matches 2.. if predicate enchantplus:random_chance/50 run scoreboard players remove $out random 1
execute if score $out random matches 2.. if predicate enchantplus:random_chance/25 run scoreboard players remove $out random 1

#Small chance to set it at level 1
execute if predicate enchantplus:random_chance/5 run scoreboard players set $out random 1

#Store the final level result
execute store result storage teplus:villagers Build.lvl int 1 run scoreboard players get $out random