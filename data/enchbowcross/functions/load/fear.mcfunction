#Change the damage from the arrow acording to the level of fear
execute if score @p[tag=teplus.fearatt] teplus.htlct matches 6..18 run data merge entity @s {damage:1.5d}
execute if score @p[tag=teplus.fearatt] teplus.htlct matches 19..29 run data merge entity @s {damage:1d}
execute if score @p[tag=teplus.fearatt] teplus.htlct matches 30.. run data merge entity @s {damage:0.5d}


tag @s add tep.cursefear
