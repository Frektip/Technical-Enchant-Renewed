#-------------EXCLUSIVE FOR AXE-------------#
execute if score #chopping teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:chopping run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:chopping",score:"#chopping"}
execute if score #timber teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:timber run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:timber",score:"#timber"}
execute if score #transmission teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:transmission run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:transmission",score:"#transmission"}
execute if score #striker teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:striker run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:striker",score:"#striker"}

#-------------SHARED ENCHANTMENTS-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:efficiency run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:efficiency",score:"#efficiency"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:fortune run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:fortune",score:"#fortune"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:sharpness unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:smite unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:bane_of_arthropods unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:impaling run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:sharpness",score:"#sharpness"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:unbreaking run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:unbreaking",score:"#unbreaking"}

# Custom enchantments
execute if score #auto_smelt teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:auto_smelt run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:auto_smelt",score:"#auto_smelt"}
execute if score #haste teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:haste run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:haste",score:"#haste"}
execute if score #xp_boost teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:xp_boost run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:xp_boost",score:"#xp_boost"}

#-------------CUSTOM CURSES-------------#
execute if score #exhaustion teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:exhaustion run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:exhaustion",score:"#exhaustion"}
execute if score #fear teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fear run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fear",score:"#fear"}
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #slippery teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:slippery run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:slippery",score:"#slippery"}