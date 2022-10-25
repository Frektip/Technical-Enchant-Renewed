#Check out if it is enabled and for a 30% chance
execute if score $Chests tepext.manager matches 0 if score #chl_mineshaft tepext.manager matches 0 if predicate enchantplus:random_chance/30 run function teplus_exten:chests/generate_loot/abandoned_mineshaft

#reset
advancement revoke @s only teplus_exten:chests/open_chest/abandoned_mineshaft