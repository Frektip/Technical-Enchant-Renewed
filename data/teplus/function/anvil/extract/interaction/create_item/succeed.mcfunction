#------------INIT STATE-------------#
tag @s add teplus.anvil.CanExtract
function teplus:anvil/extract/menu/remove_error_tags
#-----------------ADD ITEM-----------------#
data modify storage teplus:updates TAE.Output.Result.components.minecraft:custom_data.teplus.ui set value 1b
data modify entity @s Items[{Slot:13b}] set from storage teplus:updates TAE.Output.Result
#---------------UPDATE LORE DESCRIPTION----------------#
# Since it always returns a new book with only one enchantment
# Directly use the utility function to set (or not) the enchantment lore description into the output Slot
function teplus:utils/set_book_lore/check_enchants {path:"Items[{Slot:13b}]",slot:"container.13"}
#------------STORE THE OUTPUT--------------#
data modify storage teplus:updates TAE.Output.Current set from entity @s Items[{Slot:13b}]