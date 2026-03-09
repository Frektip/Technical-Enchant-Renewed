#----SET ERROR BY DEFAULT----#
tag @s add teplus.anvil.merge.error

#-------------EXCLUSIVE FOR AXE-------------#
execute if score #chopping teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:chopping run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:chopping",score:"#chopping"}
execute if score #timber teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:timber run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:timber",score:"#timber"}
execute if score #transmission teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:transmission run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:transmission",score:"#transmission"}
execute if score #striker teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:striker run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:striker",score:"#striker"}

#-------------SHARED ENCHANTMENTS-------------#
execute if score #auto_smelt teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:auto_smelt run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:auto_smelt",score:"#auto_smelt"}
execute if score #haste teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:haste run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:haste",score:"#haste"}
execute if score #xp_boost teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:xp_boost run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:xp_boost",score:"#xp_boost"}

#-------------CUSTOM CURSES-------------#
execute if score #exhaustion teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:exhaustion run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:exhaustion",score:"#exhaustion"}
execute if score #fear teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fear run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fear",score:"#fear"}
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #slippery teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:slippery run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:slippery",score:"#slippery"}