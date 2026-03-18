#-------------EXCLUSIVE FOR FISHING ROD-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:luck_of_the_sea run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:luck_of_the_sea",score:"#luck_of_the_sea"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:lure run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:lure",score:"#lure"}

# Custom enchantments
execute if score #splatter teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:splatter run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:splatter",score:"#splatter"}

#-------------SHARED ENCHANTMENTS-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:unbreaking run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:unbreaking",score:"#unbreaking"}

#-------------CUSTOM CURSES-------------#
execute if score #exhaustion teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:exhaustion run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:exhaustion",score:"#exhaustion"}
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #slippery teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:slippery run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:slippery",score:"#slippery"}