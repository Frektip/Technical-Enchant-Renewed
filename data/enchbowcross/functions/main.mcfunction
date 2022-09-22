#Check every arrow when it spawn
execute as @e[type=arrow,tag=!tep.arrow_pross] at @s run function enchbowcross:procress_arrow

##Already processed arrow entity
execute as @e[type=arrow,tag=tep.custom_arrow] at @s run function #enchbowcross:arrow_select

#The rest from this system comes from the "player" and "marker" entity
# in the "enchantplus" folder

schedule function enchbowcross:main 1t 