execute if score #tslpm game.Opts matches 1 run particle dust_color_transition 0.616 0.820 0.204 1 0.333 0.510 0.325 ~ ~.7 ~ 0 0.25 0 1 8

#Detect too entities that are only alive mobs and not the player triggering this enchantment
# -Too close entities are tp back the postition they are facing, that makes the illusion that
#  it is being repeled
execute as @e[type=!#enchantplus:antisoul,distance=0.2..1.2] unless score @s tep.plid = @e[type=armor_stand,tag=ts.protect,limit=1] tep.plid at @s run tp @s ^ ^ ^-2

# -In some cases the entity get stuck in the ground so we tp it 1 block up, in this case the 
#  distance is a bit more wide
execute as @e[type=!#enchantplus:antisoul,distance=0.2..3] unless score @s tep.plid = @e[type=armor_stand,tag=ts.protect,limit=1] tep.plid at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
