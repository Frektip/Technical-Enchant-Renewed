###################################################
# >@Context: running as the item frame with the 
#            item that we're trying to enchant
###################################################

### Debug Message ###
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Enchanting for a ","color":"gray","italic":true,"bold":false}, {"text":"[BOOK]","color":"#4840af","italic":true,"bold":false}]

tag @s add teplus.loot_is_book
data modify entity @s Item set value {id:"minecraft:enchanted_book", count:1}