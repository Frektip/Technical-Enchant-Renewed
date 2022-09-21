#Bow and Crossbow
execute as @e[type=arrow,tag=!tep.arrow_pross] at @s run function enchbowcross:procress_arrow

# Is separated from the rest so I have a better organization in this system
execute as @a run function enchbowcross:player/loop 

##Already processed arrow entity
execute as @e[type=arrow,tag=tep.custom_arrow] at @s run function #enchbowcross:arrow_select

schedule function enchbowcross:main 1t 