tag @s add tep.arrow_pross
###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Arrow generated, processing it","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"Check the arrow Owner","color":"gray","italic":true,"bold":false}]

scoreboard players set #type teplus.arrow 0
data remove storage teplus:arrow Temp.Arrow.Owner
data modify storage teplus:arrow Temp.Arrow.Owner set from entity @s Owner
execute if data storage teplus:arrow Temp.Arrow.Owner as @a[distance=..5,sort=nearest,scores={teplus.arrow=1..}] run function enchbowcross:check_arrow

###Debug Message###
execute if score #type teplus.arrow matches 0 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"The arrow wasn't shot by a player with a custom enchanted bow","color":"gray","italic":true,"bold":false}]

data remove storage teplus:arrow Temp