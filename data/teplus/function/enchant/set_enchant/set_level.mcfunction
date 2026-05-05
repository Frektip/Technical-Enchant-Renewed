# Prepare rng storage & scores
scoreboard players set $min teplus.rng 1
execute store result score $max teplus.rng run scoreboard players get #current_max teplus.data

# Get a random value based on the max available
function teplus:utils/random/init

# Set the new level to the storage - Add it to the Base Charge
execute store result storage teplus:loot Build.lvl int 1 run scoreboard players get $out teplus.rng