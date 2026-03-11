#-------------EXCLUSIVE FOR PICKAXE-------------#
execute if score #mining_plus teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:mining_plus unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.teplus:vein_miner run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:mining_plus",score:"#mining_plus"}
execute if score #vein_miner teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:vein_miner unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.teplus:mining_plus run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:vein_miner",score:"#vein_miner"}

#-------------SHARED ENCHANTMENTS-------------#
execute if score #auto_smelt teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:auto_smelt run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:auto_smelt",score:"#auto_smelt"}
execute if score #haste teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:haste run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:haste",score:"#haste"}

#-------------CUSTOM CURSES-------------#
execute if score #exhaustion teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:exhaustion run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:exhaustion",score:"#exhaustion"}
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #slippery teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:slippery run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:slippery",score:"#slippery"}