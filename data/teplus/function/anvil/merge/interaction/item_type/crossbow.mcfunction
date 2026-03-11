#-------------EXCLUSIVE FOR CROSSBOW-------------#
execute if score #fireball_wave teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fireball_wave run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fireball_wave",score:"#fireball_wave"}
execute if score #shock_fangs teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:shock_fangs run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:shock_fangs",score:"#shock_fangs"}
execute if score #sniper teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:sniper run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:sniper",score:"#sniper"}

#-------------SHARED ENCHANTMENTS-------------#
execute if score #accuracy_shot teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:accuracy_shot run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:accuracy_shot",score:"#accuracy_shot"}

#-------------CUSTOM CURSES-------------#
execute if score #fear teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fear run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fear",score:"#fear"}
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #slippery teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:slippery run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:slippery",score:"#slippery"}