#-------------EXCLUSIVE FOR HORSE ARMOR-------------#
# NO EXCLUSIVE ENCHANTMENTS??
#      ¯\_( ͡o ͜ʖ ͡O)_/¯
# But at least you can combine it with frost walker :)
execute if data storage teplus:updates TAM.Output.Enchants.minecraft:frost_walker run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "minecraft:frost_walker",score:"#frost_walker"}

#-------------SHARED ENCHANTMENTS-------------#
execute if score #anti_explosion teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:anti_explosion run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:anti_explosion",score:"#anti_explosion"}
execute if score #anti_venom teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:anti_venom run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:anti_venom",score:"#anti_venom"}
execute if score #lava_walker teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:lava_walker run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:lava_walker",score:"#lava_walker"}
execute if score #recovery teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:recovery run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:recovery",score:"#recovery"}

#-------------CUSTOM CURSES-------------#
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #sensitive teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:sensitive run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:sensitive",score:"#sensitive"}