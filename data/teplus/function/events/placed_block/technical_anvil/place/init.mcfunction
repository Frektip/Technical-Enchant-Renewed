#------------ Debug Message ------------#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Placing Technical Anvil entities","color":"gray","italic":true,"bold":false}]
particle happy_villager ~ ~ ~ 0 3 0 0 100 force @a[tag=teplus.debug_mode]
#---------------------------------------#

# Update the block placement ID
scoreboard players add $current teplus.block_id 1

execute if score $Facing teplus.tmp matches 1 run function teplus:events/placed_block/technical_anvil/place/from_direction {shared:"west_east", dir: "w", rot: 90}
execute if score $Facing teplus.tmp matches 2 run function teplus:events/placed_block/technical_anvil/place/from_direction {shared:"north_south", dir: "s", rot: 180}
execute if score $Facing teplus.tmp matches 3 run function teplus:events/placed_block/technical_anvil/place/from_direction {shared:"west_east", dir: "e", rot: 90}
execute if score $Facing teplus.tmp matches 4 run function teplus:events/placed_block/technical_anvil/place/from_direction {shared:"north_south", dir: "n", rot: 180}

# Initialize the placed entities
# data modify entity @e[type=chest_minecart,tag=teplus.technical_anvil.init,limit=1] Items set from storage teplus:tech_anvil.ui Profile
scoreboard players operation @e[type=#teplus:types/technical_anvil,tag=teplus.technical_anvil.init] teplus.block_id = $current teplus.block_id

tag @e[type=#teplus:types/technical_anvil,tag=teplus.technical_anvil.init,distance=..10] remove teplus.technical_anvil.init

# Kill the marker
kill @s