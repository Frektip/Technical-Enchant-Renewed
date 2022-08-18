scoreboard players add @s tepxm.skywalk 1

effect give @s levitation 2 1 true
execute if score #tslpm game.Opts matches 1 if data entity @s ActiveEffects[{Id:25,Amplifier:1b}] at @s run particle cloud ~ ~-.2 ~ 0.3 0.1 0.3 0.05 10