scoreboard players set $min random 0
scoreboard players set $max random 9
function enchantplus:random_uniform

execute if score $out random matches 0..1 run data modify entity @s DeathLootTable set value "teplus_exten:drops/looting/drop_100/strong"
execute if score $out random matches 0..1 run team join tepdrp.strong @s

execute if score $out random matches 2..4 run data modify entity @s DeathLootTable set value "teplus_exten:drops/looting/drop_100/average"
execute if score $out random matches 2..4 run team join tepdrp.average @s

execute if score $out random matches 5..8 run data modify entity @s DeathLootTable set value "teplus_exten:drops/looting/drop_100/low"
execute if score $out random matches 5..8 run team join tepdrp.low @s

execute if score $out random matches 9 run data modify entity @s DeathLootTable set value "teplus_exten:drops/looting/drop_100/custom_curses"
execute if score $out random matches 9 run team join tepdrp.curses @s
