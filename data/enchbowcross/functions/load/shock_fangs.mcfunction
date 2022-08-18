execute as @e[distance=..6,type=arrow,tag=!tep.shockfangs,nbt=!{inGround:1b}] store result score @s UUID0 run data get entity @s Owner[0]
execute as @e[distance=..6,type=arrow,tag=!tep.shockfangs,nbt=!{inGround:1b}] store result score @s UUID1 run data get entity @s Owner[1]
execute as @e[distance=..6,type=arrow,tag=!tep.shockfangs,nbt=!{inGround:1b}] store result score @s UUID2 run data get entity @s Owner[2]
execute as @e[distance=..6,type=arrow,tag=!tep.shockfangs,nbt=!{inGround:1b}] store result score @s UUID3 run data get entity @s Owner[3]


execute as @e[distance=..6,type=arrow,tag=!tep.shockfangs] at @s if score @s UUID0 = @p UUID0 if score @s UUID1 = @p UUID1 if score @s UUID2 = @p UUID2 if score @s UUID3 = @p UUID3 run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["tep.shockfangs_follow","tep.arrow_follow"]} 
execute as @e[distance=..6,type=arrow] at @s if score @s UUID0 = @p UUID0 if score @s UUID1 = @p UUID1 if score @s UUID2 = @p UUID2 if score @s UUID3 = @p UUID3 run tag @s add tep.shockfangs 
execute as @e[distance=..6,type=arrow] at @s if score @s UUID0 = @p UUID0 if score @s UUID1 = @p UUID1 if score @s UUID2 = @p UUID2 if score @s UUID3 = @p UUID3 run tag @s add tep.custom_arrow 
