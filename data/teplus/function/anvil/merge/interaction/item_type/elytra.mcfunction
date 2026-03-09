#----SET ERROR BY DEFAULT----#
tag @s add teplus.anvil.merge.error

#-------------EXCLUSIVE FOR ELYTRA-------------#
execute if score #armored teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:armored run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:armored",score:"#armored"}

#-------------SHARED ENCHANTMENTS-------------#

#-------------CUSTOM CURSES-------------#
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #sensitive teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:sensitive run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:sensitive",score:"#sensitive"}