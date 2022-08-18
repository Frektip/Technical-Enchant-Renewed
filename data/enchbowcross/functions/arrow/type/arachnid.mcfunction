execute if score #tslpm game.Opts matches 1 run particle block cobweb ~ ~ ~ 0 0 0 0 50
execute if entity @s[nbt={inGround:1b}] run kill @e[distance=..4,sort=nearest,limit=1,tag=tep.arachnid_follow]
execute if entity @s[nbt={inGround:1b}] run function enchbowcross:unload/arachnid
execute if entity @s[nbt={inGround:1b}] run kill @s
tp @e[distance=..4,sort=nearest,limit=1,tag=tep.arachnid_follow] @s