playsound block.beacon.power_select ambient @s[distance=..10] ~ ~ ~ 1
execute if entity @s[tag=!new_last] run scoreboard players set @s TimerEnch 0
tellraw @s ["",{"translate":"Last Life","color":"#BD3217"},{"translate":" is ready, to protect you.","color":"#CFAF13"}]
tag @s add ParticleLastLife
tag @s add lastlife_ready
tag @s add new_last
