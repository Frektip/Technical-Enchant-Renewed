execute if entity @e[type=marker,tag=set_station,limit=1,sort=nearest,distance=..5] run function teplus_exten:villagers/get_work_station/compare
data remove storage teplus:villagers Station
tag @s add tepxv.spawn