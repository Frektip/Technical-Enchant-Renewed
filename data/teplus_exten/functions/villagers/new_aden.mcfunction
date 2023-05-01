#Change the entity Name
data modify entity @s CustomName set value '{"translate":"Advanced Enchanter","color":"dark_gray","italic":false}'
#Add it into a Team
team join teplus.adenh @s

#Remove Vanilla default trades
data remove entity @s Offers.Recipes

#Change the first trade, to be the currency
data modify entity @s Offers.Recipes append value {maxUses:10,uses:0,rewardExp:0b,priceMultiplier:0.05f,buy:{id:"minecraft:lapis_lazuli",Count:6b},buyB:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner: {Id: [I; -379562060, 930630984, -1401696648, 1912235959], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTNlZGVlZWM2ZDczYTRiZTZlYTY4NmNjN2IxNDk1ZGU2OGU4NGMwMjQwNDRlOGQzZTIwNDFjZTQ3YTY5M2M5NSJ9fX0="}]}}, display: {Name: '{"italic":false,"color":"#298EE6","translate":"Polished Lapis"}', Lore: ['{"italic":false,"color":"white","translate":"Currency to trade with"}', '{"italic":false,"color":"white","translate":"an Advanced Enchanter"}', '{"color":"#63C0E3","text":"Technical Enchant+"}']}, TeplusHead: {polished_lapis: 1b}}}}


tag @s add tepxv.init