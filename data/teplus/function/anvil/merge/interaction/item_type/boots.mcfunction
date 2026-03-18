#-------------EXCLUSIVE FOR BOOTS-------------#
execute if score #agility teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:agility run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:agility",score:"#agility"}
execute if score #dasher teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:dasher run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:dasher",score:"#dasher"}
execute if score #sky_walk teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:sky_walk run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:sky_walk",score:"#sky_walk"}

#-------------SHARED ENCHANTMENTS-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:protection unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:projectile_protection unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:fire_protection unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:blast_protection run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:protection",score:"#protection"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:thorns run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:thorns",score:"#thorns"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:unbreaking run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:unbreaking",score:"#unbreaking"}

# Custom enchantments
execute if score #lava_walker teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:lava_walker run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:lava_walker",score:"#lava_walker"}

#-------------CUSTOM CURSES-------------#
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #sensitive teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:sensitive run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:sensitive",score:"#sensitive"}