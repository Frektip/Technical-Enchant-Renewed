execute if score #tslpm game.Opts matches 1 run particle crimson_spore ~ ~ ~ 0 0 0 0 100 
execute if entity @s[nbt={inGround:1b}] run kill @e[distance=..4,sort=nearest,limit=3,tag=tep.firewave_follow]
execute if entity @s[nbt={inGround:1b}] run function enchbowcross:unload/fireball_wave
execute if entity @s[nbt={inGround:1b}] run kill @s
tp @e[distance=..4,sort=nearest,limit=3,tag=tep.firewave_follow] @s