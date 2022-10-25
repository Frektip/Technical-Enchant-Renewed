#Prepare the random value
scoreboard players set $min random 1
execute store result score $max random run data get storage teplus:chest Build.lvl
function enchantplus:random_uniform

#Set the new level to the storage
execute store result storage teplus:chest Build.lvl int 1 run scoreboard players get $out random