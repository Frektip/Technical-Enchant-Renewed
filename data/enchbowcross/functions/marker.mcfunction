###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Bowcross): ","color":"#ACEFE0","italic":true,"bold":false},{"text":"Marker arrow hit something","color":"gray","italic":true,"bold":false}]

execute if entity @s[tag=tep.arachnid_follow] as @e[type=!marker,sort=nearest,limit=1] at @s run function enchbowcross:unload/arachnid
execute if entity @s[tag=tep.explosive_follow] at @e[type=!marker,sort=nearest,limit=1] run function enchbowcross:unload/explosive

execute if entity @s[tag=tep.firewave_follow] at @e[type=!marker,sort=nearest,limit=1] run function enchbowcross:unload/fireball_wave
execute if entity @s[tag=tep.shockfangs_follow] at @e[type=!marker,sort=nearest,limit=1] run function enchbowcross:unload/shock_fangs

kill @s