data modify storage teplus:villagers Trades.Current set value []
data modify storage teplus:villagers Trades.Current set from entity @s Offers.Recipes

data modify storage teplus:villagers Trades.New set value {}
data modify storage teplus:villagers Trades.New set value {maxUses:6,uses:0,priceMultiplier:0.2f,xp:3,buy:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner: {Id: [I; -379562060, 930630984, -1401696648, 1912235959], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTNlZGVlZWM2ZDczYTRiZTZlYTY4NmNjN2IxNDk1ZGU2OGU4NGMwMjQwNDRlOGQzZTIwNDFjZTQ3YTY5M2M5NSJ9fX0="}]}}, display: {Name: '{"italic":false,"color":"#298EE6","translate":"Polished Lapis"}', Lore: ['{"italic":false,"color":"white","translate":"Currency to trade with"}', '{"italic":false,"color":"white","translate":"an Advanced Enchanter"}', '{"color":"#63C0E3","text":"Technical Enchant+"}']}, TeplusHead: {polished_lapis: 1b}}},buyB:{id:"minecraft:paper",Count:1b},sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"translate":"Page of Power","color":"aqua","italic":false}',Lore:['{"translate":"A page full of unique","color":"white","italic":false}','{"translate":"enchantment knowledge","color":"white","italic":false}','{"text":" ","color":"white","italic":false}']},Enchantments:[{id:"teplus_blank"}],TeplusPower_page:1b}}}

#Set the new nbt into the trade
execute store result storage teplus:villagers Trades.New.buy.Count byte 1 run data get storage teplus:loot Temp[0].Sell
data remove storage teplus:loot Temp[0].Sell

execute if entity @s[tag=is_enchantment] run data modify storage teplus:villagers Trades.New.sell.tag.StoredCustomEnchantments[] set from storage teplus:loot Temp[0]
execute if entity @s[tag=is_curse] run data modify storage teplus:villagers Trades.New.sell.tag.StoredCustomCurse[] set from storage teplus:loot Temp[0]

#Set the correct Lore for the Page of Power
data modify entity @s HandItems[0] set from storage teplus:villagers Trades.New.sell
function teplus_exten:chests/create_loot/set_lore/init
data modify storage teplus:villagers Trades.New.sell set from entity @s HandItems[0]
item replace entity @s weapon.mainhand with air

#Re-add the trades again
data modify storage teplus:villagers Trades.Current append from storage teplus:villagers Trades.New

data modify entity @s Offers.Recipes set from storage teplus:villagers Trades.Current