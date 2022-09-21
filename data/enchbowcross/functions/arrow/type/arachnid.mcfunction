execute if score #tslpm game.Opts matches 1 run particle block cobweb ~ ~ ~ 0 0 0 0 50
tp @e[tag=tep.arachnid_follow,distance=..4,sort=nearest,limit=1] @s

###Debug Message###
execute if entity @s[nbt={inGround:1b}] run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Bowcross): ","color":"#ACEFE0","italic":true,"bold":false},{"text":"Arachnid arrow hit the ground. Unload and kill marker.","color":"gray","italic":true,"bold":false}]

execute if entity @s[nbt={inGround:1b}] run kill @e[distance=..4,sort=nearest,limit=1,tag=tep.arachnid_follow]
execute if entity @s[nbt={inGround:1b}] run function enchbowcross:unload/arachnid
execute if entity @s[nbt={inGround:1b}] run kill @s