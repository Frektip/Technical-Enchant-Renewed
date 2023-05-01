scoreboard players set $Final TCHA.cost 1

scoreboard players operation #power TCHA.cost = $Expo TCHA.cost

function technical_anvil:interaction/xp_calc/generate

#Always reduce 1 level per interaction (unless it is the first time)

scoreboard players operation $Final TCHA.cost += $Remain TCHA.cost
execute unless score $Final TCHA.cost <= #xprq game.Opts run scoreboard players remove $Final TCHA.cost 1

#--A little bit of help--#

# Reduce by multiples of 50  base value "x" from the config
#
#   [(x-1)^2 + 1] + x 
#   ------------------
#            2             
#Formula:
scoreboard players operation #square1 TCHA.cost = #xprq game.Opts
scoreboard players remove #square1 TCHA.cost 1
scoreboard players operation #square1 TCHA.cost *= #square1 TCHA.cost
scoreboard players add #square1 TCHA.cost 1
scoreboard players operation #square1 TCHA.cost /= #2const teplus.data

scoreboard players operation #mid TCHA.cost = #xprq game.Opts
scoreboard players operation #mid TCHA.cost /= #2const teplus.data

scoreboard players operation #square1 TCHA.cost += #mid TCHA.cost


#Get how many times 50
scoreboard players operation #fif TCHA.cost = $Final TCHA.cost
scoreboard players operation #fif TCHA.cost /= #50const teplus.data

execute if score #fif TCHA.cost matches 1.. run function technical_anvil:interaction/xp_calc/reduce_square1



scoreboard players operation @s TCHA.cost = $Final TCHA.cost