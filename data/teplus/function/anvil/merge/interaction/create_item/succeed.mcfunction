#------------INIT STATE-------------#
tag @s add teplus.anvil.CanCombine
function teplus:anvil/merge/menu/remove_error_tags
#-----------------ADD ITEM-----------------#
data modify storage teplus:updates TAM.Output.Result.components.minecraft:custom_data.teplus.ui set value 1b
data modify entity @s Items[{Slot:22b}] set from storage teplus:updates TAM.Output.Result
#---------------UPDATE LORE DESCRIPTION----------------#
# Just for enchanted books
execute if entity @s[tag=teplus.anvil.apply_on_book] run function teplus:anvil/merge/interaction/create_item/add_lore

# Just for Pages of Power
execute if entity @s[tag=teplus.anvil.output_page] run function teplus:anvil/merge/interaction/create_item/add_lore

# Just for Experience Crystal
execute if entity @s[tag=teplus.anvil.output_xp_crystal] run item modify entity @s container.22 teplus:misc/set_experience_crystal_lore

#------------STORE THE OUTPUT--------------#
data modify storage teplus:updates TAM.Output.Current set from entity @s Items[{Slot:22b}]