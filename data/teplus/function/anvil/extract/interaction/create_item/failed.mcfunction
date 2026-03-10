# @Context: We have an enchanted item as input but item creation fails
#  This could be due to:
#    - Item has ONLY curses and the's only books in the right input
#    - Item has ONLY enchantments and the's only isolated cores in the right input
# We can update the error message with the @param {err} to set is as a tag

# Remove other previous error tags
tag @s remove teplus.anvil.error.invalid_items
tag @s remove teplus.anvil.error.invalid_right_input
tag @s remove teplus.anvil.error.no_isolated_core
tag @s remove teplus.anvil.error.no_book

$tag @s add teplus.anvil.error.$(err)
function teplus:anvil/extract/menu/change_item/inputs/deactivate_slots