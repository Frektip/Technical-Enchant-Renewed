#------------ Debug Message ------------#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Placing Admin Box entities","color":"gray","italic":true,"bold":false}]
particle happy_villager ~ ~ ~ 0 3 0 0 100 force @a[tag=teplus.debug_mode]
#---------------------------------------#

# Update the block placement ID
scoreboard players add $current teplus.block_id 1

# Update the storage specification for all decorative entities based on the facing direction of the player
# All of the values from the storage will be later used as arguments when summoning the decorative entities

# {
#   lrot: { ry, rw },                  Specify transformation values (left rotation on the Y & W axis) 
#   lapis: { tx, tz, rrx, lry, lrw }   Specify transformation values (translation, right & left rotation)
# }

# West
execute if score $Facing teplus.tmp matches 1 run data modify storage teplus:temp place_admin_box set value {lrot: {ry: 0.5,rw: 0.5}, lapis: {tx: 0.300, tz: 0.500, rrx: -0.5, lry: 0.5, lrw: 0.5}}

# South
execute if score $Facing teplus.tmp matches 2 run data modify storage teplus:temp place_admin_box set value {lrot: {ry: 0,rw: 1}, lapis: {tx: 0.500, tz: 0.300, rrx: -0.5, lry: 0, lrw: 1}}

# East
execute if score $Facing teplus.tmp matches 3 run data modify storage teplus:temp place_admin_box set value {lrot: {ry: -0.5,rw: 0.5}, lapis: {tx: 0.690, tz: 0.500, rrx: 0.5, lry: 0.5, lrw: 0.5}}

# North
execute if score $Facing teplus.tmp matches 4 run data modify storage teplus:temp place_admin_box set value {lrot:{ry: 1,rw: 0}, lapis: {tx: 0.500, tz: 0.690, rrx: 0.5, lry: 0, lrw: 1}}

# Summon main marker controller
execute summon marker run function teplus:events/placed_block/admin_box/place/add_marker

# Add decorative entities
# Call each function with the correct group of arguments depending on the entity
# Use "teplus:temp place_admin_box" storage to pass the arguments using the corresponding path

# - Base Model
execute positioned ~ ~1 ~ summon item_display run function teplus:events/placed_block/admin_box/place/base with storage teplus:temp place_admin_box.lrot


# - Top Books
execute positioned ~ ~1 ~ summon item_display run function teplus:events/placed_block/admin_box/place/books with storage teplus:temp place_admin_box.lrot

# - Side Lapis
execute positioned ~ ~1 ~ summon item_display run function teplus:events/placed_block/admin_box/place/lapis with storage teplus:temp place_admin_box.lapis