scoreboard players set $Final teplus.anvil.cost 1

scoreboard players operation #power teplus.anvil.cost = $Expo teplus.anvil.cost

function teplus:anvil/merge/action/xp_calc/generate

# Always reduce 1 level per interaction (unless it is the first time)

scoreboard players operation $Final teplus.anvil.cost += $Remain teplus.anvil.cost
execute unless score $Final teplus.anvil.cost <= #xprq teplus.game_opts run scoreboard players remove $Final teplus.anvil.cost 1

#--A little bit of help--#

# Reduce by multiples of 50  base value "x" from the config
#
#   [(x-1)^2 + 1] + x 
#   ------------------
#            2             
# Formula:
scoreboard players operation #square1 teplus.anvil.cost = #xprq teplus.game_opts
scoreboard players remove #square1 teplus.anvil.cost 1
scoreboard players operation #square1 teplus.anvil.cost *= #square1 teplus.anvil.cost
scoreboard players add #square1 teplus.anvil.cost 1
scoreboard players operation #square1 teplus.anvil.cost /= #2const teplus.data

scoreboard players operation #mid teplus.anvil.cost = #xprq teplus.game_opts
scoreboard players operation #mid teplus.anvil.cost /= #2const teplus.data

scoreboard players operation #square1 teplus.anvil.cost += #mid teplus.anvil.cost


# Get how many times 50
scoreboard players operation #fif teplus.anvil.cost = $Final teplus.anvil.cost
scoreboard players operation #fif teplus.anvil.cost /= #50const teplus.data

execute if score #fif teplus.anvil.cost matches 1.. run function teplus:anvil/merge/action/xp_calc/reduce_square1


scoreboard players operation @s teplus.anvil.cost = $Final teplus.anvil.cost