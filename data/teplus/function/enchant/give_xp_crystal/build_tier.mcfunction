# Randomly set initial xp value based on @params: {init_min} and {init_max}
$execute store result score #teplus.xpvalue teplus.data run random value $(init_min)..$(init_max)

# Update the tier value in the storage with @param: {tier}
$data modify storage teplus:xp_crystal Build.Tier set value $(tier)

# Update the initial value from the storage with the random value from the score
execute store result storage teplus:xp_crystal Build.Value[0] int 1 run scoreboard players get #teplus.xpvalue teplus.data

# Update the max value in the storage with @param: {max}
$data modify storage teplus:xp_crystal Build.Value[1] set value $(max)

scoreboard players reset #teplus.xpvalue teplus.data