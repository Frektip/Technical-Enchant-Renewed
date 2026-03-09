#----SET ERROR BY DEFAULT----#
tag @s add teplus.anvil.merge.error

#-------------EXCLUSIVE FOR SWORD-------------#
execute if score #bloody_blade teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:bloody_blade run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:bloody_blade",score:"#bloody_blade"}
execute if score #last_stand teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:last_stand run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:last_stand",score:"#last_stand"}
execute if score #life_steal teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:life_steal run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:life_steal",score:"#life_steal"}

#-------------SHARED ENCHANTMENTS-------------#
execute if score #anti_explosion teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:anti_explosion run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:anti_explosion",score:"#anti_explosion"}
execute if score #attack_speed teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:attack_speed unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:sharpness run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:attack_speed",score:"#attack_speed"}
execute if score #poison_aspect teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:poison_aspect run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:poison_aspect",score:"#poison_aspect"}
execute if score #xp_boost teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:xp_boost run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:xp_boost",score:"#xp_boost"}

#-------------CUSTOM CURSES-------------#
execute if score #fear teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fear run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fear",score:"#fear"}
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #slippery teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:slippery run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:slippery",score:"#slippery"}