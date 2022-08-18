
#Particles
execute if entity @s[scores={BloodyBladeCount=5..7,TimerBloodyBlade=1..}] run particle minecraft:large_smoke ~ ~ ~ 0.1 0.5 0.1 0.1 1 force
execute if entity @s[scores={BloodyBladeCount=8..14,TimerBloodyBlade=1..}] run particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.5 0.1 0.1 2 force
execute if entity @s[scores={BloodyBladeCount=15..,TimerBloodyBlade=1..}] run particle minecraft:flame ~ ~ ~ 0.1 0.5 0.1 0.1 2 force

#Effects
execute if entity @s[scores={BloodyBladeCount=5..,TimerBloodyBlade=1..}] at @s run effect give @s speed 1 0 true
execute if entity @s[scores={BloodyBladeCount=8..14,TimerBloodyBlade=1..}] at @s run effect give @s strength 1 0 true
execute if entity @s[scores={BloodyBladeCount=15..,TimerBloodyBlade=1..}] at @s run effect give @s strength 1 1 true