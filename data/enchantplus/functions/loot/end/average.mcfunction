### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Clearing levels and lapis","color":"gray","italic":true,"bold":false}]

xp add @p[scores={Drop=1..}] -2 levels
clear @p[scores={Drop=1..}] lapis_lazuli 2
execute as @a[distance=..10] at @s run scoreboard players set @s Drop 0
particle enchant ~ ~1 ~ 0.1 0.1 0.1 10 5000
playsound block.enchantment_table.use master @a[distance=..30] ~ ~ ~ 100