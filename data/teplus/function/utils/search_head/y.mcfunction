#==========================================================#
# @Credits: System based on KawaMood's search block package
#==========================================================#

# Search on the Y axis
scoreboard players operation #z teplus.tmp = $distance teplus.tmp
function teplus:utils/search_head/z with storage teplus:temp search_head

scoreboard players remove #y teplus.tmp 1
execute if score #block_found teplus.tmp matches 0 if score #y teplus.tmp matches 1.. positioned ~ ~1 ~ run function teplus:utils/search_head/y