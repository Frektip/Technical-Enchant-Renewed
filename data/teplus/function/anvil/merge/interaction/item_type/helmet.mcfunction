#----SET ERROR BY DEFAULT----#
tag @s add teplus.anvil.merge.error

#-------------EXCLUSIVE FOR HELMET-------------#
execute if score #bright_vision teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:bright_vision run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:bright_vision",score:"#bright_vision"}
execute if score #magnet teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:magnet run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:magnet",score:"#magnet"}
execute if score #time_breaker teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:time_breaker run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:time_breaker",score:"#time_breaker"}

#-------------SHARED ENCHANTMENTS-------------#
execute if score #anti_explosion teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:anti_explosion run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:anti_explosion",score:"#anti_explosion"}

#-------------CUSTOM CURSES-------------#
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #sensitive teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:sensitive run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:sensitive",score:"#sensitive"}