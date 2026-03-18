#-------------EXCLUSIVE FOR HELMET-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:respiration run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:respiration",score:"#respiration"}

# Custom enchantments
execute if score #bright_vision teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:bright_vision run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:bright_vision",score:"#bright_vision"}
execute if score #magnet teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:magnet run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:magnet",score:"#magnet"}
execute if score #time_breaker teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:time_breaker run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:time_breaker",score:"#time_breaker"}

#-------------SHARED ENCHANTMENTS-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:protection unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:projectile_protection unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:fire_protection unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:blast_protection run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:protection",score:"#protection"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:thorns run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:thorns",score:"#thorns"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:unbreaking run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:unbreaking",score:"#unbreaking"}

# Custom enchantments
execute if score #anti_explosion teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:anti_explosion run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:anti_explosion",score:"#anti_explosion"}

#-------------CUSTOM CURSES-------------#
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #sensitive teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:sensitive run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:sensitive",score:"#sensitive"}