xp add @s -1000000 levels
scoreboard players remove @s teplus.player.xp 1000000

execute if score @s teplus.player.xp matches 10000000.. run function teplus:anvil/merge/action/take_xp/reduce_by/8