#------------ Debug Message ------------#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Placing Admin Box entities","color":"gray","italic":true,"bold":false}]
particle happy_villager ~ ~ ~ 0 3 0 0 100 force @a[tag=teplus.debug_mode]
#---------------------------------------#

# Update the block placement ID
scoreboard players add $current teplus.block_id 1

# Summon main marker controller
execute summon marker run function teplus:events/placed_block/admin_box/place/add_marker

# Add decorative entities
# - Base Model
execute positioned ~ ~1 ~ summon item_display run function teplus:events/placed_block/admin_box/place/base

# - Top Books
execute positioned ~ ~1 ~ summon item_display run function teplus:events/placed_block/admin_box/place/books

# - Side Lapis
execute positioned ~ ~1 ~ summon item_display run function teplus:events/placed_block/admin_box/place/lapis