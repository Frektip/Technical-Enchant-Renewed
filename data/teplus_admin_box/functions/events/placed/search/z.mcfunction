# Recursively search on the Z axis

execute if block ~ ~ ~ #technical_anvil:player_heads{SkullOwner:{Id:[I;1809211202,12143792,-1644162449,-1614214459],Name:"%teplus.block.admin_box"}} run function teplus_admin_box:events/placed/search/found
scoreboard players remove $z teplus.place 1
execute if score $found teplus.place matches 0 if score $z teplus.place matches 1.. positioned ~ ~ ~1 run function teplus_admin_box:events/placed/search/z