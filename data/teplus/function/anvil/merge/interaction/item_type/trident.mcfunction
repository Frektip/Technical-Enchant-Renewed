#-------------EXCLUSIVE FOR TRIDENT-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:impaling run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:impaling",score:"#impaling"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:riptide unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:loyalty unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:channeling run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:riptide",score:"#riptide"}

# Custom enchantments
execute if score #marine_grace teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:marine_grace run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:marine_grace",score:"#marine_grace"}
execute if score #waterjet teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:waterjet run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:waterjet",score:"#waterjet"}

#-------------SHARED ENCHANTMENTS-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:sharpness unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:smite unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:bane_of_arthropods unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:impaling run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:sharpness",score:"#sharpness"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:unbreaking run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:unbreaking",score:"#unbreaking"}

# Custom enchantments
execute if score #attack_speed teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:attack_speed unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:sharpness run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:attack_speed",score:"#attack_speed"}
execute if score #poison_aspect teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:poison_aspect run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:poison_aspect",score:"#poison_aspect"}
execute if score #xp_boost teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:xp_boost run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:xp_boost",score:"#xp_boost"}

#-------------CUSTOM CURSES-------------#
execute if score #fear teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fear run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fear",score:"#fear"}
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #slippery teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:slippery run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:slippery",score:"#slippery"}