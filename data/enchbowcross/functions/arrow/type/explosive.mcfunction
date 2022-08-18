execute if score #tslpm game.Opts matches 1 run particle item tnt ~ ~ ~ 0 0.2 0 0.1 25
execute if entity @s[nbt={inGround:1b}] run kill @e[distance=..4,sort=nearest,limit=1,tag=tep.explosive_follow]
execute if entity @s[nbt={inGround:1b}] run function enchbowcross:unload/explosive
execute if entity @s[nbt={inGround:1b}] run kill @s
tp @e[distance=..4,sort=nearest,limit=1,tag=tep.explosive_follow] @s