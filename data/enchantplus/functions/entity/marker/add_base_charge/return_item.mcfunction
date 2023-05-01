scoreboard players operation #sum.bachrg BaseCharge -= @s BaseCharge

scoreboard players operation #sum.bachrg BaseCharge /= #qtychrg game.Opts

execute store result entity @e[type=item,sort=nearest,distance=..2,tag=charge.try,limit=1] Item.Count byte 1 run scoreboard players get #sum.bachrg BaseCharge

playsound minecraft:item.bottle.fill_dragonbreath ambient @a[distance=..15] ~ ~ ~ 5 1.5
playsound minecraft:item.bottle.fill_dragonbreath ambient @a[distance=..15] ~ ~ ~ 5 1.5
particle dust_color_transition 0.588 1.000 0.973 1 0.078 0.847 1.000 ~ ~1 ~ 0.01 .5 0.01 1 50

