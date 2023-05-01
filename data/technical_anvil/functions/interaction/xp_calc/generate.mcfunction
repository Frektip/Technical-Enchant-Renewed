scoreboard players operation $Final TCHA.cost *= #xprq game.Opts

#No more than 50000 levels
execute if score $Final TCHA.cost matches 50000.. run scoreboard players set $Final TCHA.cost 50000

scoreboard players remove #power TCHA.cost 1
execute if score #power TCHA.cost matches 1.. unless score $Final TCHA.cost matches 50000.. run function technical_anvil:interaction/xp_calc/generate