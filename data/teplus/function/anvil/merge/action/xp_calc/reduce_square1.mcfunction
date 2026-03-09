scoreboard players operation $Final teplus.anvil.cost -= #square1 teplus.anvil.cost
scoreboard players remove #fif teplus.anvil.cost 1

execute if score #fif teplus.anvil.cost matches 1.. run function teplus:anvil/merge/action/xp_calc/reduce_square1