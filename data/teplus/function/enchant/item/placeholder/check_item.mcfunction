###################################################
# >@Context: running as the item frame with the 
#            item that we're trying to enchant
###################################################

# If it is a book
execute if data entity @s {Item:{id:"minecraft:book"}} run return run function teplus:enchant/item/placeholder/as_book

# It it is any other enchantable item
execute run return run function teplus:enchant/item/placeholder/as_item