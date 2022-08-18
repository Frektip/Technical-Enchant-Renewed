#Init the timer
scoreboard players add @s TimerTurtle 1

#Tp central marker for turtle animation
execute if score @s TimerTurtle matches 1.. as @e[type=marker,tag=ts.center] if score @s tep.plid = @p tep.plid run tp @s ~ ~ ~

#Deflect arrows and tridents
execute positioned ~ ~1.35 ~ as @e[type=#enchantplus:anti_turtle,distance=1..5,nbt={inGround:0b}] run data merge entity @s {Motion:[0.0d,-1.0d,0.0d]}

#Kill other projectiles
execute positioned ~ ~1.35 ~ as @e[type=#enchantplus:anti_turtle_extra,distance=1..5] at @s run function enchantplus:result/turtle_stiffness/no_projectiles


execute if score @s TimerTurtle matches 195 run playsound entity.turtle.death ambient @s ~ ~ ~ 5 0.8
#End the timer
execute if score @s TimerTurtle matches 200.. run function enchantplus:result/turtle_stiffness/clear
