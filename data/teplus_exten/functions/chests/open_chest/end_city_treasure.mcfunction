scoreboard players set $min random 1
scoreboard players set $max random 100
function enchantplus:random_uniform

#Check out if it is enabled and for a 25% chance
execute if score $Chests tepext.manager matches 0 if score #chl_endcity tepext.manager matches 0 if score $out random <= #chance_endcity tepext.manager run function teplus_exten:chests/generate_loot/end_city_treasure

#reset
advancement revoke @s only teplus_exten:chests/open_chest/end_city_treasure