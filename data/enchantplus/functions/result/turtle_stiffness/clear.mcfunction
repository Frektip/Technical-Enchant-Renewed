execute as @e[tag=turtle_shield] if score @s tep.plid = @p tep.plid run kill @s

scoreboard players reset @s TimerTurtle
tag @s remove trigger_protection