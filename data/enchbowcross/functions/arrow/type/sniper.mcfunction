execute if score #tslpm game.Opts matches 1 run particle dust 0.000 0.000 0.000 1 ~ ~ ~ 0 0 0 1 5

#Add to the Timer
execute unless score @s TimerSniper matches -1 run scoreboard players add @s TimerSniper 1


#Change the damage depending on the "distance" TimerSniper
execute if score @s TimerSniper matches 10..15 run data merge entity @s {damage:8d}
###Debug Message###
execute if score @s TimerSniper matches 10 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Bowcross): ","color":"#ACEFE0","italic":true,"bold":false},{"text":"Sniper arrow increase damage to ","color":"gray","italic":true,"bold":false},{"text":"8d!","color":"green","italic":true,"bold":false}]

execute if score @s TimerSniper matches 16..20 run data merge entity @s {damage:12d}
###Debug Message###
execute if score @s TimerSniper matches 16 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Bowcross): ","color":"#ACEFE0","italic":true,"bold":false},{"text":"Sniper arrow increase damage to ","color":"gray","italic":true,"bold":false},{"text":"12d!","color":"green","italic":true,"bold":false}]

execute if score @s TimerSniper matches 21..30 run data merge entity @s {damage:20d}
###Debug Message###
execute if score @s TimerSniper matches 21 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Bowcross): ","color":"#ACEFE0","italic":true,"bold":false},{"text":"Sniper arrow increase damage to ","color":"gray","italic":true,"bold":false},{"text":"20d!","color":"green","italic":true,"bold":false}]


# Sniper can deal more damage, lets see if someone is crazy enough to figure it out
execute if score @s TimerSniper matches 31..40 run data merge entity @s {damage:30d}
###Debug Message###
execute if score @s TimerSniper matches 31 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Bowcross): ","color":"#ACEFE0","italic":true,"bold":false},{"text":"Sniper arrow increase damage to ","color":"gray","italic":true,"bold":false},{"text":"30d!","color":"green","italic":true,"bold":false}]

execute if score @s TimerSniper matches 41..50 run data merge entity @s {damage:35d}
###Debug Message###
execute if score @s TimerSniper matches 41 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Bowcross): ","color":"#ACEFE0","italic":true,"bold":false},{"text":"Sniper arrow increase damage to ","color":"gray","italic":true,"bold":false},{"text":"35d!","color":"green","italic":true,"bold":false}]

execute if score @s TimerSniper matches 51..60 run data merge entity @s {damage:40d}
###Debug Message###
execute if score @s TimerSniper matches 51 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Bowcross): ","color":"#ACEFE0","italic":true,"bold":false},{"text":"Sniper arrow increase damage to ","color":"gray","italic":true,"bold":false},{"text":"40d!","color":"green","italic":true,"bold":false}]



#If it lands, stop the scoreboard
#Also, if it stays in a water or lava source block it will also stop the scoreboard
execute if entity @s[nbt={inGround:1b}] run scoreboard players set @s TimerSniper -1
execute if block ~ ~ ~ water[level=0] run scoreboard players set @s TimerSniper -1
execute if block ~ ~ ~ lava[level=0] run scoreboard players set @s TimerSniper -1

###Debug Message###
execute if score @s TimerSniper matches ..-1 run tellraw @a[tag=teplus.pydbgm,scores={Teplus.Report=1..}] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Bowcross): ","color":"#ACEFE0","italic":true,"bold":false},{"text":"Sniper arrow stop increasing damage","color":"gray","italic":true,"bold":false}]