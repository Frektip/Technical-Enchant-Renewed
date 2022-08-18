execute at @s if score #tslpm game.Opts matches 1 run particle dripping_dripstone_water ~ ~ ~ 0.3 5 0.3 0 500 
execute at @s run playsound item.bucket.empty master @p ~ ~ ~ 2 0.7 
execute at @s run effect give @s levitation 1 20 true 
tag @s remove Impact 