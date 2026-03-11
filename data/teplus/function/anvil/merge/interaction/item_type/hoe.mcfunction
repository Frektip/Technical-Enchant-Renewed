#-------------EXCLUSIVE FOR HOE-------------#
execute if score #grand_tilling teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:grand_tilling run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:grand_tilling",score:"#grand_tilling"}
execute if score #harvesting_plus teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:harvesting_plus run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:harvesting_plus",score:"#harvesting_plus"}
execute if score #replant teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:replant run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:replant",score:"#replant"}
execute if score #scyther teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:scyther run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:scyther",score:"#scyther"}
execute if score #soul_reaper teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:soul_reaper run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:soul_reaper",score:"#soul_reaper"}

#-------------SHARED ENCHANTMENTS-------------#

#-------------CUSTOM CURSES-------------#
execute if score #exhaustion teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:exhaustion run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:exhaustion",score:"#exhaustion"}
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #slippery teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:slippery run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:slippery",score:"#slippery"}