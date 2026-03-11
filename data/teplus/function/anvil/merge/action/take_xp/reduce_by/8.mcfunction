xp add @s -10000000 levels
scoreboard players remove @s teplus.player.xp 10000000

execute if score @s teplus.player.xp matches 100000000.. run function teplus:anvil/merge/action/take_xp/reduce_by/9