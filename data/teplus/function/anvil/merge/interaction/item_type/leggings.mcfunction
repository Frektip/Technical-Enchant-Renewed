#-------------EXCLUSIVE FOR LEGGINGS-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:swift_sneak run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:swift_sneak",score:"#swift_sneak"}

# Custom enchantments
execute if score #leaping teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:leaping run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:leaping",score:"#leaping"}
execute if score #swim_plus teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:swim_plus run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:swim_plus",score:"#swim_plus"}
execute if score #last_life teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:last_life run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:last_life",score:"#last_life"}

#-------------SHARED ENCHANTMENTS-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:protection unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:projectile_protection unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:fire_protection unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:blast_protection run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:protection",score:"#protection"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:thorns run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:thorns",score:"#thorns"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:unbreaking run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:unbreaking",score:"#unbreaking"}

# Custom enchantments
execute if score #recovery teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:recovery run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:recovery",score:"#recovery"}

#-------------CUSTOM CURSES-------------#
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #sensitive teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:sensitive run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:sensitive",score:"#sensitive"}