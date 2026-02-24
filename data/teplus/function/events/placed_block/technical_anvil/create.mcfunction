#------------ Debug Message ------------#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Technical Anvil player head found","color":"gray","italic":true,"bold":false}]
#---------------------------------------#

# @Context: The technical anvil player head was found and the following function is executed at its position
# Also we are runing this function as the player who placed the block

# Get the player facing
function teplus:utils/get_entity_facing

# Place the main marker initializer
execute summon marker run function teplus:events/placed_block/technical_anvil/place/init

# Clear the storage
data remove storage teplus:temp search_head