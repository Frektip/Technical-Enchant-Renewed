#==========================================================#
# @Credits: System based on KawaMood's search block package
#==========================================================#

# Search on the Z axis
$execute if block ~ ~ ~ #teplus:player_heads$(custom_data) run function teplus:utils/search_head/found with storage teplus:temp search_head
scoreboard players remove #z teplus.tmp 1

execute if score #block_found teplus.tmp matches 0 if score #z teplus.tmp matches 1.. positioned ~ ~ ~1 run function teplus:utils/search_head/z with storage teplus:temp search_head
