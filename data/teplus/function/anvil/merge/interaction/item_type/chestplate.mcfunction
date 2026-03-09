#----SET ERROR BY DEFAULT----#
tag @s add teplus.anvil.merge.error

#-------------EXCLUSIVE FOR CHESTPLATE-------------#
execute if score #auto_feed teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:auto_feed run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:auto_feed",score:"#auto_feed"}
execute if score #flaming_skin teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:flaming_skin run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:flaming_skin",score:"#flaming_skin"}
execute if score #life_plus teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:life_plus run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:life_plus",score:"#life_plus"}

#-------------SHARED ENCHANTMENTS-------------#
execute if score #anti_venom teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:anti_venom run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:anti_venom",score:"#anti_venom"}

#-------------CUSTOM CURSES-------------#
execute if score #fragile teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:fragile run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:fragile",score:"#fragile"}
execute if score #sensitive teplus.game_opts matches 1 if data storage teplus:updates TAM.Output.Enchants.teplus:sensitive run function teplus:anvil/merge/interaction/apply_enchantment {"ench": "teplus:sensitive",score:"#sensitive"}