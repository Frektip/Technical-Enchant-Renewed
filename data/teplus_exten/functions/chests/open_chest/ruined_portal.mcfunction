execute store result score $out random run random value 1..100

#Check out if it is enabled and for a 30% chance
execute if score $Chests tepext.manager matches 0 if score #chl_ruinport tepext.manager matches 0 if score $out random <= #chance_ruinport tepext.manager run function teplus_exten:chests/generate_loot/ruined_portal

#reset
advancement revoke @s only teplus_exten:chests/open_chest/ruined_portal