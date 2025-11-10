# @Context: as/at the enchanting table marker without full base charge score
# This function kills the item droped and show some visuals and sounds

kill @e[type=item,tag=teplus.charge_try,sort=nearest,distance=..5]
playsound minecraft:item.bottle.fill_dragonbreath ambient @a[distance=..15] ~ ~ ~ 5 1.5
playsound minecraft:item.bottle.fill_dragonbreath ambient @a[distance=..15] ~ ~ ~ 5 1.5
particle dust_color_transition 0.588 1.000 0.973 1 0.078 0.847 1.000 ~ ~1 ~ 0.01 .5 0.01 1 50
