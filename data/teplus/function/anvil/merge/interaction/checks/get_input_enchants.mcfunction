# Reset the storage
data modify storage teplus:updates TAM.Output.Enchants.Right set value []

# Copy the enchantments if the right input item is a book
execute if entity @s[tag=!teplus.anvil.IsSameItem] run return run data modify storage teplus:updates TAM.Output.Enchants.Right set from entity @s Items[{Slot:6b}]components.minecraft:stored_enchantments

# Copy the enchantments if the right input item is the same item type from the other slot
execute if entity @s[tag=!teplus.anvil.IsSameItem] run data modify storage teplus:updates TAM.Output.Enchants.Right set from entity @s Items[{Slot:6b}]components.minecraft:enchantments