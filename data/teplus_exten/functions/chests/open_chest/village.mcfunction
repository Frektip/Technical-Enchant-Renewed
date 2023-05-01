scoreboard players set $min random 1
scoreboard players set $max random 100
function enchantplus:random_uniform

#Check out if it is enabled and for a 30% chance
execute if score $Chests tepext.manager matches 0 if score #chl_village tepext.manager matches 0 if score $out random <= #chance_village tepext.manager run function teplus_exten:chests/generate_loot/village

#reset
advancement revoke @s only teplus_exten:chests/open_chest/village