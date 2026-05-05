### Debug Message ###
tellraw @a[tag=teplus.debug_mode] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Bad luck! A custom curse has been added","color":"#EE639C","italic":true,"bold":false}]

# 50% chance to remove other Enchantments (book only)
execute if predicate teplus:random_chance/50 run data remove entity @s[tag=teplus.loot_is_book] Item.components.minecraft:stored_enchantments
function teplus:enchant/set_curse/core