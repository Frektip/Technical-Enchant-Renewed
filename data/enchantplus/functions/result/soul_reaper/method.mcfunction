execute if score #tslpm game.Opts matches 1 run particle ash ~ ~ ~ 0.5 0.5 0.5 0 8

execute if score #lmtsoul game.Opts matches 0 run function enchantplus:result/soul_reaper/all_entities
execute if score #lmtsoul game.Opts matches 1 run function enchantplus:result/soul_reaper/not_player_only
execute if score #lmtsoul game.Opts matches 2 run function enchantplus:result/soul_reaper/not_some_only
execute if score #lmtsoul game.Opts matches 3 run function enchantplus:result/soul_reaper/not_some_and_player

