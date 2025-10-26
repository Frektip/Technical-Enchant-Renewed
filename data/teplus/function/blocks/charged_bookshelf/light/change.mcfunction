##########################################################
#                        @CREDITS                        #
# The following light update system was made by KawaMood #
# TE+ took some parts to match its needs                 #
##########################################################

# Update current block entity to check
scoreboard players operation $temp teplus.block_id = @s teplus.block_id

# Remove the current marker tag
$tag @s remove teplus.light_source.$(move_from_direction)

# Store the current direction from the light source
$data modify storage teplus:common temp.move_from_direction set value $(move_from_direction)

# Update storage arguments data
function teplus:blocks/charged_bookshelf/light/set_direction

# Update item display position and translation based on the storage arguments
execute if data storage teplus:common temp.light_move_to_args.move_to_direction run function teplus:blocks/charged_bookshelf/light/modify with storage teplus:common temp.light_move_to_args

