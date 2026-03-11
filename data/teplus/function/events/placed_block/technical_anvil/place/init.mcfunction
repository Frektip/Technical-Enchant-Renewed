#------------ Debug Message ------------#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Placing Technical Anvil entities","color":"gray","italic":true,"bold":false}]
particle happy_villager ~ ~ ~ 0 3 0 0 100 force @a[tag=teplus.debug_mode]
#---------------------------------------#

# Update the block placement ID
scoreboard players add $current teplus.block_id 1

# Update the storage specification for all decorative entities based on the facing direction pf th eplayer
# All of the values from the storage will be later used as arguments when summoning the decorative entities

# {
#   rot,                              Specifies the minecart rotation
#   legs: { one, two },               Both of them specify transformation values (translation & scale) 
#   center: { one, two },             Both of them specify transformation values (translation & scale)
#   chains: { one, two },             Both of them specify transformation values (translation) and the axis of rotation for the chain
#   mini_anvil: {tx, tz, lry, lrw}    Specifies the translation in X & Z axis and the left rotation in Y & W axis
# }

# West
execute if score $Facing teplus.tmp matches 1 run data modify storage teplus:temp place_anvil set value {rot: 90, legs:{one:{tx: -0.525,tz: -0.350,sx: 2.05,sz: 0.800}, two:{tx: -0.525,tz: 0.550,sx: 2.05,sz: 0.800}}, center:{one:{tx: -0.008,ty: 0.494,tz: 0.000, sx: 1.020,sz: 1.000}, two:{tx: -0.002,ty: 0.368,tz: 0.000,sx: 1.005,sz: 1.000}}, chains:{one:{axis: "x",tx: 0.000,tz: 0.500}, two:{axis: "x",tx: 0.000,tz: -0.500}}, mini_anvil:{tx: 0.820,tz: 0.5,lry: 0,lrw: 1.0}}

# South
execute if score $Facing teplus.tmp matches 2 run data modify storage teplus:temp place_anvil set value {rot: 180, legs:{one:{tx: -0.350,tz: -0.525,sx:  0.800,sz: 2.05}, two:{tx: .550,tz: -0.525,sx: 0.800,sz: 2.05}}, center:{one:{tx: 0.000,ty: 0.494,tz: -0.008, sx: 1.000,sz: 1.020}, two:{tx: 0.000,ty: 0.368,tz: -0.002, sx: 1.000,sz: 1.005}}, chains:{one:{axis: "z",tx: 0.500,tz: 0.000}, two:{axis: "z",tx: -0.500,tz: 0.000}}, mini_anvil:{tx: 0.5,tz: 0.81,lry: -0.70710677,lrw: 0.70710677}}

# East
execute if score $Facing teplus.tmp matches 3 run data modify storage teplus:temp place_anvil set value {rot: 90, legs:{one:{tx: -0.525,tz: -0.350,sx: 2.05,sz: 0.800}, two:{tx: -0.525,tz: 0.550,sx: 2.05,sz: 0.800}}, center:{one:{tx: -0.008,ty: 0.494,tz: 0.000, sx: 1.020,sz: 1.000}, two:{tx: -0.002,ty: 0.368,tz: 0.000,sx: 1.005,sz: 1.000}}, chains:{one:{axis: "x",tx: 0.000,tz: 0.500}, two:{axis: "x",tx: 0.000,tz: -0.500}}, mini_anvil:{tx: 0.180,tz: 0.5,lry: 0,lrw: 1.0}}

# North
execute if score $Facing teplus.tmp matches 4 run data modify storage teplus:temp place_anvil set value {rot: 180, legs:{one:{tx: -0.350,tz: -0.525,sx:  0.800,sz: 2.05}, two:{tx: .550,tz: -0.525,sx: 0.800,sz: 2.05}}, center:{one:{tx: 0.000,ty: 0.494,tz: -0.008, sx: 1.000,sz: 1.020}, two:{tx: 0.000,ty: 0.368,tz: -0.002, sx: 1.000,sz: 1.005}}, chains:{one:{axis: "z",tx: 0.500,tz: 0.000}, two:{axis: "z",tx: -0.500,tz: 0.000}}, mini_anvil:{tx: 0.5,tz: 0.18,lry: -0.70710677,lrw: 0.70710677}}

# Add decorative entities once the storage to send it as arguments to the function
function teplus:events/placed_block/technical_anvil/place/from_direction with storage teplus:temp place_anvil

# Initialize the placed entities
data modify entity @e[type=chest_minecart,tag=teplus.technical_anvil.init,limit=1] Items set from storage teplus:ui Global[{profile:"technical_anvil"}].Merge
scoreboard players operation @e[type=#teplus:types/technical_anvil,tag=teplus.technical_anvil.init] teplus.block_id = $current teplus.block_id

tag @e[type=#teplus:types/technical_anvil,tag=teplus.technical_anvil.init,distance=..10] remove teplus.technical_anvil.init

# Kill the marker
kill @s