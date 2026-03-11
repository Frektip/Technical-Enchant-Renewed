xp add @s -100 levels
scoreboard players remove @s teplus.player.xp 100

execute if score @s teplus.player.xp matches 1000.. run function teplus:anvil/merge/action/take_xp/reduce_by/4