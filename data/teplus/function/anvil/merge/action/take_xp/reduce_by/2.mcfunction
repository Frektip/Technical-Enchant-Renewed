xp add @s -10 levels
scoreboard players remove @s teplus.player.xp 10

execute if score @s teplus.player.xp matches 100.. run function teplus:anvil/merge/action/take_xp/reduce_by/3