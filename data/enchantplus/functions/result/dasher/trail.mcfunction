summon marker ~ ~ ~ {Tags:["teplus.marker","dasher.harm"]}
#Asign the marker the same id as the player
execute as @e[type=marker,limit=1,sort=nearest,distance=..0.1] run scoreboard players operation @s tep.plid = @p tep.plid
#Repeat
scoreboard players set @s TimerDash 101