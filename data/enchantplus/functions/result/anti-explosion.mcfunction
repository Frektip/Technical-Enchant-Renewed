#Anti-Explosion
execute as @e[type=creeper,tag=!no_aex,distance=..5] run data modify entity @s Fuse set value 50
execute as @e[type=tnt,tag=!no_aex,distance=..5] run data modify entity @s Fuse set value 50