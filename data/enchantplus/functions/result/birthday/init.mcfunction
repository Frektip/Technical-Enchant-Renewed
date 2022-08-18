particle entity_effect ~ ~ ~ 0.2 0.5 0.2 1 10
scoreboard players add @s MasterCelebrate 1
function enchantplus:result/birthday/one_birthday
execute if score @s MasterCelebrate matches 2400.. run tag @s remove teplus.celebrate
execute if score @s MasterCelebrate matches 2400.. run scoreboard players reset @s TimerYearsBirth
execute if score @s MasterCelebrate matches 2400.. run scoreboard players reset @s BalloonYear
execute if score @s MasterCelebrate matches 2400.. run scoreboard players reset @s MasterCelebrate
