# @Context: This function is run as a Librarian villager
# We check his workstation value to link it to a lectern that below has a charged bookshelf block

data modify storage teplus:villagers Station set from entity @e[type=marker,tag=teplus.set_station,limit=1,sort=nearest,distance=..5] data.Station

execute store success score #station.is_same teplus.data run data modify storage teplus:villagers Station set from entity @s Brain.memories.minecraft:job_site.value.pos

# Only if the villager lectern position and the charged bookshelf 'data.Station' are the same
# give the villager a tag to know it has properly linked to the workstation
execute if score #station.is_same teplus.data matches 0 run tag @s add teplus.station_match