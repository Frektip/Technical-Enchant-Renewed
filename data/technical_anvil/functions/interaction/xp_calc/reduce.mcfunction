scoreboard players operation $Final TCHA.cost -= #xprq game.Opts
scoreboard players remove #tens TCHA.cost 1

execute if score #tens TCHA.cost matches 1.. run function technical_anvil:interaction/xp_calc/reduce