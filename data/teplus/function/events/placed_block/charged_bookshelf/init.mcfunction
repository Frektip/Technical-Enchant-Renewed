#Revoke advancement
advancement revoke @s only teplus:events/placed_charged_bookshelf

#Start the raycast to locate the placed bookshelf
execute at @s anchored eyes positioned ^ ^ ^ run function teplus:events/placed_block/charged_bookshelf/raycast

#A marker is summoned where the block was placed (in theory) 
execute as @e[type=marker,tag=teplus.ray] at @s run function teplus:events/placed_block/charged_bookshelf/set_bookshelf