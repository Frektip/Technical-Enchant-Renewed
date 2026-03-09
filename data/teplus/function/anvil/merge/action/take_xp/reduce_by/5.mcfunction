xp add @s -10000 levels
scoreboard players remove @s teplus.player.xp 10000

execute if score @s teplus.player.xp matches 100000.. run function teplus:anvil/merge/action/take_xp/reduce_by/6