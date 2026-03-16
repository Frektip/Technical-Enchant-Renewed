# Detect a fresh librarian (hasn't trade yet)
execute as @e[type=villager,tag=!teplus.new_enchanter,predicate=teplus:villager/new_librarian] at @s run function teplus:villagers/get_work_station/init

# # As a new Advanced Enchanter (link the lectern of the villager to the charged bookshelf block)
execute as @e[type=villager,tag=teplus.station_match] at @s run say I'm an advanced enchanter

# # If the Advanced Enchanter hasn't trade yet and loose it's workstation
# tag @e[type=villager,tag=tepxv.init,tag=!tepxv.set,predicate=teplus_exten:villagers/no_profession] remove tepxv.init
# tag @e[type=villager,tag=tepxv.spawn,tag=!tepxv.set,predicate=teplus_exten:villagers/no_profession] remove tepxv.spawn

schedule function teplus:villagers/main 1t