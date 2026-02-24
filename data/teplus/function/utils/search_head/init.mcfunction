#==========================================================#
# @Credits: System based on KawaMood's search block package
#==========================================================#

# In this function we use an input argument {radius}
# Search a block in a cubic area around the player (radius) * (radius) * (radius) at the center

# Prepare scores based on the teplus:temp search_head storage
execute store result score $radius teplus.tmp run data get storage teplus:temp search_head.radius
scoreboard players operation $distance teplus.tmp = $radius teplus.tmp
scoreboard players operation $distance teplus.tmp += $radius teplus.tmp
scoreboard players add $distance teplus.tmp 1
scoreboard players operation #x teplus.tmp = $distance teplus.tmp

scoreboard players set #block_found teplus.tmp 0

$execute align xyz positioned ~-$(radius) ~-$(radius) ~-$(radius) run function teplus:utils/search_head/x