scoreboard players operation $Final teplus.anvil.cost *= #xprq teplus.game_opts

# No more than 50000 levels
execute if score $Final teplus.anvil.cost matches 50000.. run scoreboard players set $Final teplus.anvil.cost 50000

scoreboard players remove #power teplus.anvil.cost 1
execute if score #power teplus.anvil.cost matches 1.. unless score $Final teplus.anvil.cost matches 50000.. run function teplus:anvil/merge/action/xp_calc/generate