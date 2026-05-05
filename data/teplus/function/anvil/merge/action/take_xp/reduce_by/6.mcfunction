xp add @s -100000 levels
scoreboard players remove @s teplus.player.xp 100000

execute if score @s teplus.player.xp matches 1000000.. run function teplus:anvil/merge/action/take_xp/reduce_by/7