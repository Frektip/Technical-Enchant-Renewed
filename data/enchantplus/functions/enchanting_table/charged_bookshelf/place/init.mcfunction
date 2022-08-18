advancement revoke @s only enchantplus:placed_charged_bookshelf

#Run Iris, so we have the exact spot where the player place the block 
execute at @s anchored eyes positioned ^ ^ ^ run function iris:get_target

#This Iris marker is where we placed the block (in theory) 
execute as @e[type=marker,tag=iris.ray] at @s run function enchantplus:enchanting_table/charged_bookshelf/place/set_bookshelf

#Schedule this function, so the game has time to correctly detect the minimum Tier 3
# enchanting setup
schedule function enchantplus:enchanting_table/charged_bookshelf/place/give_advancement 4t
