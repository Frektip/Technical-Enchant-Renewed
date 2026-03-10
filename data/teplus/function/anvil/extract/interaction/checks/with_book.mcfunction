# Generate default enchanted book in the output
data modify storage teplus:updates TAE.Output.Result set value {Slot:13b,id:"minecraft:enchanted_book",count:1}

# Get the enchantments from the item (left input slot) ---> It should build "TAE.Output.Enchants" storage
function teplus:anvil/extract/interaction/checks/get_enchants_only

# Put the first enchantment into the enchanted book
execute if data storage teplus:updates TAE.Output.Enchants[0] run function teplus:anvil/extract/interaction/checks/select_enchantment with storage teplus:updates TAE.Output.Enchants[0]

# Detect if there are enchantments to extract
execute if data storage teplus:updates TAE.Output.Result.components.minecraft:stored_enchantments run function teplus:anvil/extract/interaction/create_item/succeed

# If it fails it means that there are ONLY vanilla/TE+ custom curses on the item
execute unless data storage teplus:updates TAE.Output.Result.components.minecraft:stored_enchantments run function teplus:anvil/extract/interaction/create_item/failed