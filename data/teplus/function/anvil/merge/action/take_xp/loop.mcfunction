# Remove the correct amount of levels form the player (recursive loop)

# Remove levels by power of 10's
scoreboard players operation $Power teplus.player.xp = #1const teplus.data
scoreboard players operation $Remove teplus.player.xp = @s teplus.player.xp
function teplus:anvil/merge/action/take_xp/get_10_power
scoreboard players operation $Power teplus.player.xp /= #10const teplus.data

# Remove the xp levels according to the $Power
execute if score $Power teplus.player.xp matches 1.. run function teplus:anvil/merge/action/take_xp/reduce_by/1

execute if entity @s[scores={teplus.player.xp=1..}] run function teplus:anvil/merge/action/take_xp/loop
execute unless entity @s[scores={teplus.player.xp=1..}] run tag @s remove teplus.anvil.current