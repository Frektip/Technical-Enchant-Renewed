execute store result score $out random run random value 1..100

#Check out if it is enabled and for a 30% chance
execute if score $Chests tepext.manager matches 0 if score #chl_dungeon tepext.manager matches 0 if score $out random <= #chance_dungeon tepext.manager run function teplus_exten:chests/generate_loot/simple_dungeon

#reset
advancement revoke @s only teplus_exten:chests/open_chest/simple_dungeon