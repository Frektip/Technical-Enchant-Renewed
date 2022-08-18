execute if score #tslpm game.Opts matches 1 run particle dust 0.000 0.000 0.000 1 ~ ~ ~ 0 0 0 1 5

#Add to the Timer
execute unless score @s TimerSniper matches -1 run scoreboard players add @s TimerSniper 1


#Change the damage depending on the "distance" TimerSniper
execute if score @s TimerSniper matches 10..15 run data merge entity @s {damage:8d}


execute if score @s TimerSniper matches 16..20 run data merge entity @s {damage:12d}


execute if score @s TimerSniper matches 21..30 run data merge entity @s {damage:20d}


# Sniper can deal more damage, lets see if someone is crazy enough to figure it out
execute if score @s TimerSniper matches 31..40 run data merge entity @s {damage:30d}
execute if score @s TimerSniper matches 41..50 run data merge entity @s {damage:35d}
execute if score @s TimerSniper matches 51..60 run data merge entity @s {damage:40d}



#If it lands, stop the scoreboard
#Also, if it stays in a water or lava source block it will also stop the scoreboard
execute if entity @s[nbt={OnGround:1b}] run scoreboard players set @s TimerSniper -1
execute if block ~ ~ ~ water[level=0] run scoreboard players set @s TimerSniper -1
execute if block ~ ~ ~ lava[level=0] run scoreboard players set @s TimerSniper -1