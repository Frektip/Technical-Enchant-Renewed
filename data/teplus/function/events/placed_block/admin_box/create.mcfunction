#------------ Debug Message ------------#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Admin Box player head found, link a marker to it","color":"gray","italic":true,"bold":false}]
#---------------------------------------#

# @Context: The admin box player head was found and the following function is executed at its position
# Also we are runing this function as the player who placed the block

# Get the player facing
function teplus:utils/get_entity_facing

# Get the player ID, so it will be the one who can only use the Admin Box UI
scoreboard players operation #admin.this teplus.player.id = @s teplus.player.id

# Place the main marker initializer
function teplus:events/placed_block/admin_box/place/init

# Clear the storages
data remove storage teplus:temp search_head
data remove storage teplus:temp place_admin_box