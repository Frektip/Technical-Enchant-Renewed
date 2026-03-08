#------------INIT STATE-------------#
tag @s add teplus.anvil.CanCombine
tag @s remove teplus.anvil.error.invalid_items
tag @s remove teplus.anvil.error.invalid_enchant
#-----------------ADD ITEM-----------------#
data modify storage teplus:updates TAM.Output.Result.components.minecraft:custom_data.teplus.ui set value 1b
data modify entity @s Items[{Slot:22b}] set from storage teplus:updates TAM.Output.Result
#---------------UPDATE LORE----------------#
# Just for enchanted books
#execute if data storage teplus:updates {ResultItem:{id:"minecraft:enchanted_book"}} run function technical_anvil:edit_lore/books
# Just for Pages of Power
#----------------------------------------------------
# Just for Experience Crystal
#----------------------------------------------------

#------------STORE THE OUTPUT--------------#
data modify storage teplus:updates TAM.Output.Current set from entity @s Items[{Slot:22b}]