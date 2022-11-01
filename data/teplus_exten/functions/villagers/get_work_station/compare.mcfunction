data modify storage teplus:villagers Station set from entity @e[type=marker,tag=set_station,limit=1,sort=nearest,distance=..5] data.Station

execute store success score #wst.is_same teplus.data run data modify storage teplus:villagers Station set from entity @s Brain.memories.minecraft:job_site.value.pos

execute if score #wst.is_same teplus.data matches 0 run tag @s add tepxv.station_match