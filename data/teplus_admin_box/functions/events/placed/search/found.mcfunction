scoreboard players set $found teplus.place 1

#Get the player's ID, so it will be the one who can only use the Admin Box UI
scoreboard players operation #admin.this tep.plid = @s tep.plid

#Place the main marker
function teplus_admin_box:events/placed/prepare

#Initialize the marker
execute as @e[type=marker,tag=teplus.admin_box,limit=1,sort=nearest] at @s run function teplus_admin_box:events/placed/setup