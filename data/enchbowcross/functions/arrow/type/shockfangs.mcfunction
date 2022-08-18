execute if score #tslpm game.Opts matches 1 run particle crit ~ ~ ~ 0 0.5 0 0.25 50 
execute if entity @s[nbt={inGround:1b}] run kill @e[distance=..4,sort=nearest,limit=3,tag=tep.shockfangs_follow]
execute if entity @s[nbt={inGround:1b}] run function enchbowcross:unload/shock_fangs
execute if entity @s[nbt={inGround:1b}] run kill @s
tp @e[distance=..4,sort=nearest,limit=3,tag=tep.shockfangs_follow] @s