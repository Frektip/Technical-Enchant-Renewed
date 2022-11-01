data modify entity @s data.Station set value [I;0,0,0]
#X coordinate
execute store result entity @s data.Station[0] int 1 run data get entity @s Pos[0]

#Y coordinate (1 up)
execute store result score #worst.y teplus.data run data get entity @s Pos[1]
execute store result entity @s data.Station[1] int 1 run scoreboard players add #worst.y teplus.data 1

#Z coordinate
execute store result entity @s data.Station[2] int 1 run data get entity @s Pos[2]

tag @s add set_station

#Particles and sounds
playsound minecraft:block.enchantment_table.use master @a[distance=..7] ~ ~ ~ 5 2
playsound minecraft:block.enchantment_table.use master @a[distance=..7] ~ ~ ~ 5 2
playsound minecraft:block.enchantment_table.use master @a[distance=..7] ~ ~ ~ 5 2

particle dust_color_transition 0.090 0.365 1.000 1 0.251 0.725 1.000 ~.5 ~1 ~ 0 0 .25 1 25
particle dust_color_transition 0.090 0.365 1.000 1 0.251 0.725 1.000 ~.4 ~1 ~ 0 0 .25 1 25
particle dust_color_transition 0.090 0.365 1.000 1 0.251 0.725 1.000 ~.3 ~1 ~ 0 0 .25 1 25
particle dust_color_transition 0.090 0.365 1.000 1 0.251 0.725 1.000 ~.2 ~1 ~ 0 0 .25 1 25
particle dust_color_transition 0.090 0.365 1.000 1 0.251 0.725 1.000 ~.1 ~1 ~ 0 0 .25 1 25
particle dust_color_transition 0.090 0.365 1.000 1 0.251 0.725 1.000 ~ ~1 ~ 0 0 .25 1 25
particle dust_color_transition 0.090 0.365 1.000 1 0.251 0.725 1.000 ~-.1 ~1 ~ 0 0 .25 1 25
particle dust_color_transition 0.090 0.365 1.000 1 0.251 0.725 1.000 ~-.2 ~1 ~ 0 0 .25 1 25
particle dust_color_transition 0.090 0.365 1.000 1 0.251 0.725 1.000 ~-.3 ~1 ~ 0 0 .25 1 25
particle dust_color_transition 0.090 0.365 1.000 1 0.251 0.725 1.000 ~-.4 ~1 ~ 0 0 .25 1 25
particle dust_color_transition 0.090 0.365 1.000 1 0.251 0.725 1.000 ~-.5 ~1 ~ 0 0 .25 1 25