# Recursively search on the X axis

scoreboard players set $y teplus.place 10
function teplus_admin_box:events/placed/search/y
scoreboard players remove $x teplus.place 1
execute if score $found teplus.place matches 0 if score $x teplus.place matches 1.. positioned ~1 ~ ~ run function teplus_admin_box:events/placed/search/x