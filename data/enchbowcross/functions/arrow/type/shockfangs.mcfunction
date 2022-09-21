execute if score #tslpm game.Opts matches 1 run particle crit ~ ~ ~ 0 0.5 0 0.25 50
tp @e[tag=tep.shockfangs_follow,distance=..4,sort=nearest,limit=3] @s

###Debug Message###
execute if entity @s[nbt={inGround:1b}] run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Bowcross): ","color":"#ACEFE0","italic":true,"bold":false},{"text":"Shock Fangs arrow hit the ground. Unload and kill marker.","color":"gray","italic":true,"bold":false}]

execute if entity @s[nbt={inGround:1b}] run kill @e[distance=..4,sort=nearest,limit=3,tag=tep.shockfangs_follow]
execute if entity @s[nbt={inGround:1b}] run function enchbowcross:unload/shock_fangs
execute if entity @s[nbt={inGround:1b}] run kill @s