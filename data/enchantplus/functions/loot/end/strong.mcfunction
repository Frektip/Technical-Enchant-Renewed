### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Clearing levels and lapis","color":"gray","italic":true,"bold":false}]

xp add @p[scores={Drop=1..}] -3 levels
scoreboard players operation @e[type=marker,tag=teplus.enchanting_table,tag=is_enchanting,distance=..1] BaseCharge -= #teplus.bachamt BaseCharge

scoreboard players set @a[distance=..10] Drop 0
particle enchant ~ ~1 ~ 0.1 0.1 0.1 10 5000
playsound block.enchantment_table.use master @a[distance=..30] ~ ~ ~ 100

#Small chance to get an xp Crystal
execute if predicate enchantplus:random_chance/15 at @e[type=marker,tag=teplus.enchanting_table,tag=teplus.tier5,distance=..1] positioned ~ ~1 ~ run function enchantplus:loot/loot_system/give_xp_crystal/core