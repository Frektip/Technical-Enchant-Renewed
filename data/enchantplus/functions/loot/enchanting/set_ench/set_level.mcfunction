#Prepare the random value
scoreboard players set $min random 1
execute store result score $max random run data get storage teplus:loot Build.lvl
function enchantplus:random_uniform

#Set the new level to the storage - Add it to the Base Charge
execute store result storage teplus:loot Build.lvl int 1 run scoreboard players get $out random