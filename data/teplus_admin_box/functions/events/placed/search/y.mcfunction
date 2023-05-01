# Recursively search on the Y axis

scoreboard players set $z teplus.place 10
function teplus_admin_box:events/placed/search/z
scoreboard players remove $y teplus.place 1
execute if score $found teplus.place matches 0 if score $y teplus.place matches 1.. positioned ~ ~1 ~ run function teplus_admin_box:events/placed/search/y