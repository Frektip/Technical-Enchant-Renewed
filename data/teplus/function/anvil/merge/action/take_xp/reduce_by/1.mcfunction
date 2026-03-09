xp add @s -1 levels
scoreboard players remove @s teplus.player.xp 1

execute if score @s teplus.player.xp matches 10.. run function teplus:anvil/merge/action/take_xp/reduce_by/2