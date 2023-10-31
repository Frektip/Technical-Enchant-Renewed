
execute store success score $teplus.match_struct teplus.data run data modify storage teplus:chest Struct.With[0].id set from storage teplus:chest Struct.Get

execute if score $teplus.match_struct teplus.data matches 0 store result score #chest.odds teplus.data run data get storage teplus:chest Struct.With[0].add
execute if score $teplus.match_struct teplus.data matches 0 run function teplus_exten:chests/create_loot/system/success


data remove storage teplus:chest Struct.With[0]
execute if score $teplus.match_struct teplus.data matches 1 if data storage teplus:chest Struct.With[0] run function teplus_exten:chests/create_loot/system/get_from_structure
