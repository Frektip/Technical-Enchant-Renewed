xp add @s -1000 levels
scoreboard players remove @s teplus.player.xp 1000

execute if score @s teplus.player.xp matches 10000.. run function teplus:anvil/merge/action/take_xp/reduce_by/5