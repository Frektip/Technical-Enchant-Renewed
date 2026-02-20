execute store result score $out teplus.rng run random value 1..100

# Check out if it is enabled and look for the % chance to occur
#execute if score $Chests teplus.game_opts matches 0 if score #chl_mineshaft teplus.game_opts matches 0 if score $out teplus.rng <= #chance_mineshaft teplus.game_opts run function teplus:chests/generate_loot/abandoned_mineshaft
function teplus:chests/get_source {container_type: 1, rolls: 1, structure: "minecraft:mineshaft"}

# Reset
advancement revoke @s only teplus:events/open_chest/abandoned_mineshaft