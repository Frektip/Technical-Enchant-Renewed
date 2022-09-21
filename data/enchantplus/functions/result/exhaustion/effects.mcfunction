scoreboard players add @s TimerExha 1

#Give effects
effect give @s minecraft:mining_fatigue 1 6 true
execute if block ~ ~-.8 ~ #enchantplus:not_solid run tp @s[predicate=!enchantplus:is_swimming] ~ ~-.75 ~

execute if predicate enchantplus:random_chance/15 run function enchantplus:result/exhaustion/movement

#Reset after 10 seconds
tag @s[scores={TimerExha=100..}] remove teplus.exhausted
scoreboard players reset @s[scores={TimerExha=100..}] TimerExha