# @Context: We have valid items to enchant but the item creation fails
#  This could be due to:
#    - Item has ONLY curses and the's only books in the right input
#    - Item has ONLY enchantments and the's only isolated cores in the right input
# We can update the error message with the @param {err} to set is as a tag

# Remove other previous error tags
function teplus:anvil/merge/menu/remove_error_tags

$tag @s add teplus.anvil.error.$(err)
function teplus:anvil/merge/menu/change_item/inputs/deactivate_slots