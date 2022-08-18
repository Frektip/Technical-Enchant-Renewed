#Check out if it is enabled and for a 25% chance
execute if score $Chests tepext.manager matches 0 if score #chl_shipwreck tepext.manager matches 0 if predicate enchantplus:random_chance/25 run function teplus_exten:chests/generate_loot/shipwreck

#reset
advancement revoke @s only teplus_exten:chests/open_chest/shipwreck