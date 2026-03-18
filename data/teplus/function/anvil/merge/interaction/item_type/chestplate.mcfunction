#-------------EXCLUSIVE FOR CHESTPLATE-------------#
execute if score #auto_feed teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:auto_feed run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:auto_feed",score:"#auto_feed"}
execute if score #flaming_skin teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:flaming_skin run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:flaming_skin",score:"#flaming_skin"}
execute if score #life_plus teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:life_plus run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:life_plus",score:"#life_plus"}

#-------------SHARED ENCHANTMENTS-------------#
# Vanilla with increased level
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:protection unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:projectile_protection unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:fire_protection unless data storage teplus:updates TAM.Output.Result.components.minecraft:enchantments.minecraft:blast_protection run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:protection",score:"#protection"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:thorns run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:thorns",score:"#thorns"}
execute if score $VanPlus teplus.game_opts matches 0 if data storage teplus:updates TAM.Output.Enchants.minecraft:unbreaking run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:unbreaking",score:"#unbreaking"}

# Custom enchantments
execute if score #anti_venom teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:anti_venom run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:anti_venom",score:"#anti_venom"}

#-------------CUSTOM CURSES-------------#
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #sensitive teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:sensitive run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:sensitive",score:"#sensitive"}