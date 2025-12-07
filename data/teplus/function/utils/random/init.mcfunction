# To use this function, the $min & $max scores must have been previously set
# This function takes thoose arguments and uses them to generate a random number

data modify storage teplus:common random set value {"min":0,"max":0}

execute store result storage teplus:common random.min int 1 run scoreboard players get $min teplus.rng
execute store result storage teplus:common random.max int 1 run scoreboard players get $max teplus.rng

function teplus:utils/random/generate with storage teplus:common random