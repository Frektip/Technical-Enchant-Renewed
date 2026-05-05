##########################################################
#                        @CREDITS                        #
# The following light update system was made by KawaMood #
# TE+ took some parts to match its needs                 #
##########################################################

###Debug###
$tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Updated charged bookshelf light source to: $(move_to_direction)","color":"gray","italic":true,"bold":false}]

# Update marker tag
$tag @s add teplus.light_source.$(move_to_direction)

# Update item_display
execute as @e[type=minecraft:item_display,tag=teplus.visual_bookshelf,predicate=teplus:block_id_match,distance=..10] run function teplus:blocks/charged_bookshelf/light/update_display with storage teplus:common temp.light_move_to_args