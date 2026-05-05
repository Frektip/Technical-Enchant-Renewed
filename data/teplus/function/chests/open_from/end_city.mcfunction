execute store result score $out teplus.rng run random value 1..100

# Check out if it is enabled and look for the % chance to occur
execute if score $Chests teplus.game_opts matches 0 if score #chl_endcity teplus.game_opts matches 0 if score $out teplus.rng <= #chance_endcity teplus.game_opts run function teplus:chests/get_source {container_type: 0, rolls: 2, structure: "minecraft:end_city"}

# Reset
advancement revoke @s only teplus:events/open_chest/end_city