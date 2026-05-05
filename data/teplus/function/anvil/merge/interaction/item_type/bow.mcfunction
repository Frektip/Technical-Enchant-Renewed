#-------------EXCLUSIVE FOR BOW-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:power run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:power",score:"#power"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:punch run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:punch",score:"#punch"}

# Custom enchantments
execute if score #arachnid teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:arachnid run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:arachnid",score:"#arachnid"}
execute if score #explosive teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:explosive run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:explosive",score:"#explosive"}

#-------------SHARED ENCHANTMENTS-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:unbreaking run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:unbreaking",score:"#unbreaking"}

# Custom enchantments
execute if score #accuracy_shot teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:accuracy_shot run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:accuracy_shot",score:"#accuracy_shot"}
execute if score #anti_explosion teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:anti_explosion run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:anti_explosion",score:"#anti_explosion"}

#-------------CUSTOM CURSES-------------#
execute if score #fear teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fear run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fear",score:"#fear"}
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #slippery teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:slippery run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:slippery",score:"#slippery"}