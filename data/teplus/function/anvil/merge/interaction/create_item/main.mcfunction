#============================= CREATE ITEM IN STORAGE =============================#
# Always select the item from the left input slot (Section1 storage)
data modify storage teplus:updates TAM.Output.Result set value {Slot:22b,id:"minecraft:air",count:1b}
data modify storage teplus:updates TAM.Output.Result.id set from storage teplus:updates TAM.Inputs.Section1.id
data modify storage teplus:updates TAM.Output.Result.components set from storage teplus:updates TAM.Inputs.Section1.components

#============================= COMBINATION TYPE CHECKS =============================#

# Page of Power - Page of Power
#-------------------------------------

# Item - Enchanted Book
execute if entity @s[tag=!teplus.anvil.IsSameItem,tag=!teplus.anvil.output_book,nbt=!{Items:[{Slot:2b,id:"minecraft:enchanted_book",count:1}]}] run function #teplus:anvil/merge/interaction/check_item_with_book

# Item - Item
execute if entity @s[tag=teplus.anvil.IsSameItem] run function #teplus:anvil/merge/interaction/check_item_with_item

# Enchanted Book - Enchanted Book
execute if entity @s[nbt={Items:[{Slot:2b,id:"minecraft:enchanted_book",count:1}]}] run function teplus:anvil/merge/interaction/checks/book_with_book

# Experience Crystal - Experience Crystal
#-------------------------------------

#============================= UPDATE RESULT ITEM SLOT =============================#
#-------BOOK - BOOK-------#
execute if entity @s[tag=teplus.anvil.output_book] if data storage teplus:updates TAM.Output.Result.components.minecraft:stored_enchantments run function teplus:anvil/merge/interaction/create_item/succeed
execute if entity @s[tag=teplus.anvil.output_book] unless data storage teplus:updates TAM.Output.Result.components.minecraft:stored_enchantments run function teplus:anvil/merge/interaction/create_item/failed



# Detect when an enchantment is not compatible with an item
execute if entity @s[tag=teplus.anvil.merge.error] run function teplus:anvil/merge/interaction/create_item/failed

#============================= REMOVE TAGS =============================#
# Remove general merge error tag
tag @s remove teplus.anvil.merge.error

# Remove tags when an enchantment is applied to a book or item
tag @s remove teplus.anvil.apply_on_book
tag @s remove teplus.anvil.apply_on_item

# If the output is an item or an enchanted book
tag @s remove teplus.anvil.output_book
tag @s remove teplus.anvil.output_item

# In case we merge item with the same item type
tag @s remove teplus.anvil.IsSameItem