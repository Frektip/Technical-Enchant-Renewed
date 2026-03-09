#----SET ERROR BY DEFAULT----#
tag @s add teplus.anvil.merge.error

#-------------EXCLUSIVE FOR SHOVEL-------------#
execute if score #big_path teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:big_path run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:big_path",score:"#big_path"}
execute if score #excavator teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:excavator run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:excavator",score:"#excavator"}

#-------------SHARED ENCHANTMENTS-------------#
execute if score #auto_smelt teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:auto_smelt run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:auto_smelt",score:"#auto_smelt"}
execute if score #haste teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:haste run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:haste",score:"#haste"}

#-------------CUSTOM CURSES-------------#
execute if score #exhaustion teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:exhaustion run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:exhaustion",score:"#exhaustion"}
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #slippery teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:slippery run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:slippery",score:"#slippery"}