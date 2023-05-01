scoreboard players operation $Final TCHA.cost -= #square1 TCHA.cost
scoreboard players remove #fif TCHA.cost 1

execute if score #fif TCHA.cost matches 1.. run function technical_anvil:interaction/xp_calc/reduce_square1