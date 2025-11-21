##-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#
# Check if the item doesn't have a "teplus" enchantment
# Separate between normal items and books

execute if predicate teplus:item/no_enchants if entity @s[nbt={Item:{id:"minecraft:book"}}] if entity @e[type=marker,tag=teplus.enchanting_table,distance=..1] run return run function teplus:enchant/book/get_tier

execute if predicate teplus:item/no_enchants if entity @e[type=marker,tag=teplus.enchanting_table,distance=..1] run say item without teplus echantments

##-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#