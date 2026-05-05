# Get a random number
scoreboard players set $min teplus.rng 1
execute store result score $max teplus.rng run data get storage teplus:villagers Build.lvl
function teplus:utils/random/init

# Set the new level, prevent getting the max level at once
execute if score $out teplus.rng matches 2.. if score $out teplus.rng = $max teplus.rng run scoreboard players remove $out teplus.rng 1

# Reduce the change to get higher levels more
# first 50% to reduce 1 level, then a 25% to reduce another one
execute if score $out teplus.rng matches 2.. if predicate teplus:random_chance/50 run scoreboard players remove $out teplus.rng 1
execute if score $out teplus.rng matches 2.. if predicate teplus:random_chance/25 run scoreboard players remove $out teplus.rng 1

# 5% chance to set it at level 1
execute if predicate teplus:random_chance/5 run scoreboard players set $out teplus.rng 1

# Store the final level result
execute store result storage teplus:villagers Build.lvl int 1 run scoreboard players get $out teplus.rng