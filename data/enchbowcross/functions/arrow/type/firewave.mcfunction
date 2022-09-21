execute if score #tslpm game.Opts matches 1 run particle crimson_spore ~ ~ ~ 0 0 0 0 100
tp @e[tag=tep.firewave_follow,distance=..4,sort=nearest,limit=3] @s

###Debug Message###
execute if entity @s[nbt={inGround:1b}] run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Bowcross): ","color":"#ACEFE0","italic":true,"bold":false},{"text":"Fireball Wave arrow hit the ground. Unload and kill marker.","color":"gray","italic":true,"bold":false}]

execute if entity @s[nbt={inGround:1b}] run kill @e[distance=..4,sort=nearest,limit=3,tag=tep.firewave_follow]
execute if entity @s[nbt={inGround:1b}] run function enchbowcross:unload/fireball_wave
execute if entity @s[nbt={inGround:1b}] run kill @s