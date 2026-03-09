#----SET ERROR BY DEFAULT----#
tag @s add teplus.anvil.merge.error

#-------------EXCLUSIVE FOR BOOTS-------------#
execute if score #agility teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:agility run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:agility",score:"#agility"}
execute if score #dasher teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:dasher run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:dasher",score:"#dasher"}
execute if score #sky_walk teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:sky_walk run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:sky_walk",score:"#sky_walk"}

#-------------SHARED ENCHANTMENTS-------------#
execute if score #lava_walker teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:lava_walker run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:lava_walker",score:"#lava_walker"}

#-------------CUSTOM CURSES-------------#
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #sensitive teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:sensitive run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:sensitive",score:"#sensitive"}