# Initialize storages
data modify storage teplus:villagers Trades.Current set value []
data modify storage teplus:villagers Trades.Current set from entity @s Offers.Recipes

data modify storage teplus:villagers Trades.New set from storage teplus:register BaseTrade

#----Set the new nbt into the trade----#

# Polished Lapis quantity
execute store result storage teplus:villagers Trades.New.buy.Count byte 1 run data get storage teplus:loot Temp[0].Sell
data remove storage teplus:loot Temp[0].Sell

# Page of Power enchantment
# Format the selected enchantment (Temp[0]) to a compound ---> Store the value in "teplus:temp singlenchobj" storage
function teplus:utils/ench_to_single_obj with storage teplus:loot Temp[0]
data modify storage teplus:villagers Trades.New.sell.components.minecraft:stored_enchantments merge from storage teplus:temp singlenchobj

# Set the correct Lore description for the Page of Power
data modify entity @s equipment.mainhand set from storage teplus:villagers Trades.New.sell
function teplus:utils/set_book_lore/check_enchants {path:"equipment.mainhand",slot:"weapon.mainhand"}
data modify storage teplus:villagers Trades.New.sell set from entity @s equipment.mainhand
item replace entity @s weapon.mainhand with air

# Re-add the trades again
data modify storage teplus:villagers Trades.Current append from storage teplus:villagers Trades.New
data modify entity @s Offers.Recipes set from storage teplus:villagers Trades.Current