execute if score #tslpm game.Opts matches 1 run particle minecraft:ash ~ ~ ~ 0.5 0.5 0.5 0 8

execute if score #lmtsoul game.Opts matches 0..1 run function teplus_exten:mobs/has_ench/mainhand/soul_reaper/all_entities
execute if score #lmtsoul game.Opts matches 2..3 run function teplus_exten:mobs/has_ench/mainhand/soul_reaper/not_some_only