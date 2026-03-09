#----SET ERROR BY DEFAULT----#
tag @s add teplus.anvil.merge.error

#-------------EXCLUSIVE FOR TRIDENT-------------#
execute if score #marine_grace teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:marine_grace run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:marine_grace",score:"#marine_grace"}
execute if score #waterjet teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:waterjet run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:waterjet",score:"#waterjet"}

#-------------SHARED ENCHANTMENTS-------------#
execute if score #attack_speed teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:attack_speed unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:sharpness run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:attack_speed",score:"#attack_speed"}
execute if score #poison_aspect teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:poison_aspect run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:poison_aspect",score:"#poison_aspect"}
execute if score #xp_boost teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:xp_boost run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:xp_boost",score:"#xp_boost"}

#-------------CUSTOM CURSES-------------#
execute if score #fear teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fear run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fear",score:"#fear"}
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #slippery teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:slippery run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:slippery",score:"#slippery"}