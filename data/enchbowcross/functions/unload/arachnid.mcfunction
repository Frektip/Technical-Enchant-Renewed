#Summon a marker in the middle of the group of cobwebs
summon marker ~ ~ ~ {Tags:["teplus.marker","teplus.arach_cobw"]}
#Set other blocks
execute at @s run setblock ~ ~ ~ cobweb destroy
execute at @s run setblock ~-1 ~ ~ cobweb keep
execute at @s run setblock ~1 ~ ~ cobweb keep
execute at @s run setblock ~ ~ ~1 cobweb keep
execute at @s run setblock ~ ~ ~-1 cobweb keep
tp @s ~ ~-.5 ~ 
