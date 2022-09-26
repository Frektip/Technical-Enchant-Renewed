###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Chopping): ","color":"#7BA991","italic":true,"bold":false},{"text":"Mined in Up - Down direction","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Chopping): ","color":"#9B6446","italic":true,"bold":false},{"text":"Breaking blocks in 3x3 area","color":"gray","italic":true,"bold":false}]

execute if block ~1 ~ ~1 #enchantplus:chopping run setblock ~1 ~ ~1 air destroy
execute if block ~1 ~ ~-1 #enchantplus:chopping run setblock ~1 ~ ~-1 air destroy
execute if block ~-1 ~ ~-1 #enchantplus:chopping run setblock ~-1 ~ ~-1 air destroy
execute if block ~-1 ~ ~1 #enchantplus:chopping run setblock ~-1 ~ ~1 air destroy
execute if block ~ ~ ~-1 #enchantplus:chopping run setblock ~ ~ ~-1 air destroy
execute if block ~ ~ ~1 #enchantplus:chopping run setblock ~ ~ ~1 air destroy
execute if block ~-1 ~ ~ #enchantplus:chopping run setblock ~-1 ~ ~ air destroy
execute if block ~1 ~ ~ #enchantplus:chopping run setblock ~1 ~ ~ air destroy
