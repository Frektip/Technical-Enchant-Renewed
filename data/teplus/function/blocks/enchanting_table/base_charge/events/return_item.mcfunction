# Get the additional base charged that can't be added
scoreboard players operation #sum.bachrg teplus.base_charge -= @s teplus.base_charge

# Divide the remaining base charge by the game options value to get the respective item "Count"
scoreboard players operation #sum.bachrg teplus.base_charge /= #qnty_per_item teplus.game_opts

# Update the item Count tag with the remaining score value
execute store result entity @e[type=item,sort=nearest,distance=..2,tag=teplus.charge_try,limit=1] Item.Count byte 1 run scoreboard players get #sum.bachrg teplus.base_charge

# Visuals
playsound minecraft:item.bottle.fill_dragonbreath ambient @a[distance=..15] ~ ~ ~ 5 1.5
playsound minecraft:item.bottle.fill_dragonbreath ambient @a[distance=..15] ~ ~ ~ 5 1.5
particle dust_color_transition 0.588 1.000 0.973 1 0.078 0.847 1.000 ~ ~1 ~ 0.01 .5 0.01 1 50