##-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#
# Check if the item doesn't have a "teplus" enchantment
execute if predicate teplus:item/no_enchants if entity @e[type=marker,tag=teplus.enchanting_table,distance=..1] run function teplus:enchant/item/get_tier

##-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#-----#