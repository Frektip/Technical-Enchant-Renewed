xp add @p[scores={Drop=1..}] -2 levels
clear @p[scores={Drop=1..}] lapis_lazuli 2
execute as @a[distance=..10] at @s run scoreboard players set @s Drop 0
particle minecraft:enchant ~ ~1 ~ 0.1 0.1 0.1 10 5000
playsound minecraft:block.enchantment_table.use master @a[distance=..30] ~ ~ ~ 100