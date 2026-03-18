#-------------EXCLUSIVE FOR SWORD-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:fire_aspect run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:fire_aspect",score:"#fire_aspect"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:knockback run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:knockback",score:"#knockback"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:looting run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:looting",score:"#looting"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:sweeping_edge run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:sweeping_edge",score:"#sweeping_edge"}

# Custom enchantments
execute if score #bloody_blade teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:bloody_blade run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:bloody_blade",score:"#bloody_blade"}
execute if score #last_stand teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:last_stand run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:last_stand",score:"#last_stand"}
execute if score #life_steal teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:life_steal run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:life_steal",score:"#life_steal"}

#-------------SHARED ENCHANTMENTS-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:sharpness unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:smite unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:bane_of_arthropods unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:impaling run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:sharpness",score:"#sharpness"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:unbreaking run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:unbreaking",score:"#unbreaking"}

# Custom enchantments
execute if score #anti_explosion teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:anti_explosion run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:anti_explosion",score:"#anti_explosion"}
execute if score #attack_speed teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:attack_speed unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:sharpness run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:attack_speed",score:"#attack_speed"}
execute if score #poison_aspect teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:poison_aspect run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:poison_aspect",score:"#poison_aspect"}
execute if score #xp_boost teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:xp_boost run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:xp_boost",score:"#xp_boost"}

#-------------CUSTOM CURSES-------------#
execute if score #fear teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fear run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fear",score:"#fear"}
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #slippery teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:slippery run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:slippery",score:"#slippery"}