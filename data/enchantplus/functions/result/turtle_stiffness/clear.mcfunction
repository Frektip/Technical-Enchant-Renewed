### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"End Turtle Stiffness, deleting marker and armor stands linked to the player","color":"gray","italic":true,"bold":false}]

execute as @e[tag=turtle_shield] if score @s tep.plid = @p tep.plid run kill @s

scoreboard players reset @s TimerTurtle
tag @s remove trigger_protection