#Modify the last vanilla trade
data modify entity @s Offers.Recipes[-1].maxUses set value 3
data modify entity @s Offers.Recipes[-1].xp set value 5
data modify entity @s Offers.Recipes[-1].priceMultiplier set value 0.2f
data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:blaze_powder",Count:5b}
data modify entity @s Offers.Recipes[-1].buyB set value {id:"minecraft:redstone_block",Count:1b}
data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"translate":"Isolated Core","color":"#D93262","italic":false}',Lore:['{"translate":"A rare item used to remove","color":"white","italic":false}','{"translate":"vanilla and custom curses","color":"white","italic":false}','{"text":"Technical Enchant+","color":"#63C0E3"}']},TeplusHead:{isolated_core:1b},SkullOwner:{Id:[I;-1182053666,1416774549,-1949217575,-819028885],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjRiMWVlMjgyOWU1YzE4OGUwZDU1NDRmMjkyZTMzZTVjOTY2ZGZiZmNkMDE4ZGFjNjA2MzcwMjU4N2VkZDc5ZiJ9fX0="}]}}}}

#Tag it to limit the trades
tag @s add tepxv.isl_cr