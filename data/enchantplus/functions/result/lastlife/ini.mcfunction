#Regive le tag
execute if entity @s[tag=!new_last] at @s run function enchantplus:result/lastlife/tag
execute if score @s TimerEnch matches 1..6000 at @s run scoreboard players remove @s TimerEnch 1
execute if entity @s[tag=!lastlife_ready,scores={TimerEnch=0}] at @s run function enchantplus:result/lastlife/reset
#Effect si le joueur a moins de 5 PV
execute if entity @s[tag=lastlife_ready,scores={HealthEnch=..5,TimerEnch=0}] at @s run function enchantplus:result/lastlife/effect
#particle
execute if score #tslpm game.Opts matches 1 if entity @s[tag=ParticleLastLife] at @s run particle dolphin ~ ~0.75 ~ 0.25 0.25 0.25 0.1 1