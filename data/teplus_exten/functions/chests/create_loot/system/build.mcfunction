#Set the Chest Odds to cero
scoreboard players set #chest.odds teplus.data 0

data modify storage teplus:chest Struct.With set value []
data modify storage teplus:chest Struct.With append from storage teplus:chest Build.Structure[]

execute if data storage teplus:chest Struct.With[].all run function teplus_exten:chests/create_loot/system/appear_at_any

execute if data storage teplus:chest Struct.With[0].id run function teplus_exten:chests/create_loot/system/get_from_structure