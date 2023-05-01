# Start to search the block recursively in a 10x10x10 area around the player

scoreboard players set $x teplus.place 10
scoreboard players set $found teplus.place 0
execute align xyz positioned ~-5 ~-5 ~-5 run function teplus_admin_box:events/placed/search/x