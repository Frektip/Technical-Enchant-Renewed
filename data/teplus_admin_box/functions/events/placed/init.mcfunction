advancement revoke @s only teplus_admin_box:placed_admin_box

#Run a raycast, so we have the exact spot where the player place the block 
execute at @s anchored eyes positioned ^ ^ ^ run function teplus_admin_box:events/placed/raycast

#Get the player's ID, so it will be the one who can only use the Admin Box UI
scoreboard players operation #admin.this tep.plid = @s tep.plid

#As the marker that detected the barrel
execute as @e[type=marker,tag=teplus.ray,limit=1,sort=nearest] at @s run function teplus_admin_box:events/placed/add_marker

#Add decorative things
execute as @e[type=marker,tag=teplus.admin_box,limit=1,sort=nearest] at @s run function teplus_admin_box:events/placed/add_decorative