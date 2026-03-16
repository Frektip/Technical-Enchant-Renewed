execute if entity @e[type=marker,tag=teplus.set_station,limit=1,sort=nearest,distance=..5] run function teplus:villagers/get_work_station/compare
data remove storage teplus:villagers Station
tag @s add teplus.new_enchanter