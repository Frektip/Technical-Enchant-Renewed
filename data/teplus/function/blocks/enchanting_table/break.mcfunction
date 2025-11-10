# Kill item display related entity
kill @e[type=armor_stand,tag=teplus.bookshelf_level,distance=..2]

# Return the items from the charge
execute if score @s teplus.base_charge matches 1.. run function teplus:blocks/enchanting_table/base_charge/events/return_item/give_back_all

# Kill marker
kill @s