#Modify the last vanilla trade
data modify entity @s Offers.Recipes[-1].maxUses set value 3
data modify entity @s Offers.Recipes[-1].xp set value 5
data modify entity @s Offers.Recipes[-1].priceMultiplier set value 0.2f
data modify entity @s Offers.Recipes[-1].buy set value {id:"minecraft:diamond",Count:5b}
data modify entity @s Offers.Recipes[-1].buyB set value {id:"minecraft:gold",Count:7b}
data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"translate":"Blessed Orb","color":"#D93262","italic":false}',Lore:['{"translate":"Puch a mob with this orb to","color":"white","italic":false}','{"translate":"convert it into an enchanted one","color":"white","italic":false}','{"text":"Technical Enchant+","color":"#63C0E3"}']},TeplusHead:{blessed_orb:1b},SkullOwner:{Id:[I;1426414260,-1053604529,-1932565519,-1658789434],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODcyNWQxMWZlMWQ3YmUxNjdlYzVjYzc2OTdjZGZjMjU1NzM3NzRlZTQxYjhjM2IzNzI2MWU0M2Q1ZDMxOGZjMyJ9fX0="}]}}}}

#Tag it to limit the trades
tag @s add tepxv.bls_orb