#Check out if it is enabled and for a 25% chance
execute if score $Chests tepext.manager matches 0 if score #chl_ancity tepext.manager matches 0 if predicate enchantplus:random_chance/25 run function teplus_exten:chests/generate_loot/ancient_city

#reset
advancement revoke @s only teplus_exten:chests/open_chest/ancient_city