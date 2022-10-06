scoreboard players operation @s teplus.facdmg += @s TakeDamage
execute if score @s teplus.facdmg matches 300.. run function enchantplus:result/flaming_skin/trigger

#Reset scores
# -TimeHurt is another scoreboard, so the player needs to get
#   constantly hurt, so it can accumulate the damage
#   the time limit is 3 seconds, after that, "teplus.facdmg" gets reset
scoreboard players reset @s TimerHurt
scoreboard players reset @s[scores={teplus.facdmg=300..}] teplus.facdmg