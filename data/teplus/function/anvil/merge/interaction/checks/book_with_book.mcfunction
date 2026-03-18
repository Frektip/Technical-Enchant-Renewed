#----SET ERROR BY DEFAULT----#
tag @s add teplus.anvil.merge.error

# Add tracking tag (book + book = book)
tag @s add teplus.anvil.output_book

# Check if any of the input enchanted books enchanted book does not have vanilla enchantments
scoreboard players set #book_vanilla teplus.anvil.value 0
execute store result score #book_vanilla teplus.anvil.value run function teplus:anvil/merge/interaction/checks/vanilla_ench/core {slot:2}
execute if score #book_vanilla teplus.anvil.value matches 0 store result score #book_vanilla teplus.anvil.value run function teplus:anvil/merge/interaction/checks/vanilla_ench/core {slot:6}

# Update output slot to give the correct error message
execute if score #book_vanilla teplus.anvil.value matches 1 run return run function teplus:anvil/merge/interaction/create_item/failed {err:"invalid_vanilla_book"}

# Add any TE+ custom enchantment if any of the vanilla enchantments are present
execute if score #book_vanilla teplus.anvil.value matches 0 run function #teplus:anvil/merge/interaction/item_type/book