scoreboard players operation $Remove teplus.player.xp = @s teplus.player.xp
scoreboard players operation $Remove teplus.player.xp /= $Power teplus.player.xp

execute if score $Remove teplus.player.xp matches 1.. run scoreboard players operation $Power teplus.player.xp *= #10const teplus.data

execute if score $Remove teplus.player.xp matches 1.. run function teplus:anvil/merge/action/take_xp/get_10_power