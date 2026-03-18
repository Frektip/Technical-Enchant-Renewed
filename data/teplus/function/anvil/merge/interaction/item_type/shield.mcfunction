#-------------EXCLUSIVE FOR SHIELD-------------#
execute if score #anti_knockback teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:anti_knockback run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:anti_knockback",score:"#anti_knockback"}
execute if score #hardness_plus teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:hardness_plus run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:hardness_plus",score:"#hardness_plus"}
execute if score #peaks teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:peaks run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:peaks",score:"#peaks"}
execute if score #turtle_stiffness teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:turtle_stiffness run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:turtle_stiffness",score:"#turtle_stiffness"}

#-------------SHARED ENCHANTMENTS-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:unbreaking run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:unbreaking",score:"#unbreaking"}

#-------------CUSTOM CURSES-------------#
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #sensitive teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:sensitive run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:sensitive",score:"#sensitive"}