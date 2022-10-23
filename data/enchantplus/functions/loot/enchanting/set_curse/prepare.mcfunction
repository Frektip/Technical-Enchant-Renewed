### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Bad luck! Adding a custom curse to the item","color":"#EE639C","italic":true,"bold":false}]

#Set the rarity for the charged bookshelf
scoreboard players set #enchant.rarity teplus.data -1
#50% chance to remove other Custom Enchantments
execute if predicate enchantplus:random_chance/50 run data remove entity @s[tag=teplus.loot_is_book] Item.tag.StoredCustomEnchantments
function enchantplus:loot/enchanting/set_curse/core