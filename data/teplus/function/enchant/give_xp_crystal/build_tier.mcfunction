# Update the tier value in the storage with @param: {tier}
$scoreboard players set #teplus.xptier teplus.data $(tier)

# Randomly set initial xp value based on @params: {init_min} and {init_max}
$execute store result score #teplus.xpvalue teplus.data run random value $(init_min)..$(init_max)

# Update the max value with @param: {max}
$scoreboard players set #teplus.xpmax teplus.data $(max)