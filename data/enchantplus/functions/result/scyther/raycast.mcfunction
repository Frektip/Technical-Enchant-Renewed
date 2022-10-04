execute unless block ~ ~ ~ #enchantplus:not_solid run function enchantplus:result/scyther/get_level

scoreboard players add .distance tep.rc 1

## Debug Particle ##
particle crit ~ ~ ~ 0 0 0 0 1 force @a[tag=teplus.pydbgm]

#If it reaches 7 blocks
#Run the function to break the block, regardless of it's possition
execute if score .distance tep.rc matches 70 if block ~ ~ ~ #enchantplus:not_solid positioned ~ ~-.5 ~ run function enchantplus:result/scyther/get_level
execute if score .distance tep.rc matches ..70 if block ~ ~ ~ #enchantplus:not_solid positioned ^ ^ ^0.1 run function enchantplus:result/scyther/raycast