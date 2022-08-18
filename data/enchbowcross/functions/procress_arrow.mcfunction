tag @s add tep.arrow_pross

scoreboard players set #type teplus.arrow 0
data remove storage teplus:arrow Temp.Arrow.Owner
data modify storage teplus:arrow Temp.Arrow.Owner set from entity @s Owner
execute if data storage teplus:arrow Temp.Arrow.Owner as @a[distance=..5,sort=nearest,scores={teplus.arrow=1..}] run function enchbowcross:check_arrow

data remove storage teplus:arrow Temp