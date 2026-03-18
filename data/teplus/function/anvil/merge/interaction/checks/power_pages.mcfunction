#----SET ERROR BY DEFAULT----#
tag @s add teplus.anvil.merge.error

# Add tracking tag (page + page = page)
tag @s add teplus.anvil.output_page

# Check if both pages of power have a count of 1
# Combine as a normal enchanted book
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{count:1}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{count:1}}}} run return run function #teplus:anvil/merge/interaction/item_type/book

# Update error message in the UI in case one of the pages has a count more than 1
function teplus:anvil/merge/interaction/create_item/failed {err:"invalid_page_count"}