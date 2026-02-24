#==========================================================#
# @Credits: System based on KawaMood's search block package
#==========================================================#

# Search on the X axis
scoreboard players operation #y teplus.tmp = $distance teplus.tmp
function teplus:utils/search_head/y

scoreboard players remove #x teplus.tmp 1
execute if score #block_found teplus.tmp matches 0 if score #x teplus.tmp matches 1.. positioned ~1 ~ ~ run function teplus:utils/search_head/x