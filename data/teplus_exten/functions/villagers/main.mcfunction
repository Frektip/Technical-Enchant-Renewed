#Detect a fresh librarian (hasn't trade yet)
execute as @e[type=villager,tag=!tepxv.spawn,predicate=teplus_exten:villagers/new_librarian] at @s run function teplus_exten:villagers/get_work_station/init

#As a new Advanced Enchanter
execute as @e[type=villager,tag=tepxv.station_match] at @s run function teplus_exten:villagers/as_advanced_enchanter

#If the Advanced Enchanter hasn't trade yet and loose it's workstation
tag @e[type=villager,tag=tepxv.init,tag=!tepxv.set,predicate=teplus_exten:villagers/no_profession] remove tepxv.init
tag @e[type=villager,tag=tepxv.spawn,tag=!tepxv.set,predicate=teplus_exten:villagers/no_profession] remove tepxv.spawn

#Run this function every minute
schedule function teplus_exten:villagers/main 1t