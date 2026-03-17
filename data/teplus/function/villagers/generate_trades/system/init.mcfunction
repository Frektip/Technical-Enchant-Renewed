# Get available enchantments based on the tags
function teplus:villagers/generate_trades/system/available

# Loop through the enchantments
function teplus:villagers/generate_trades/system/select_ench
execute if data storage teplus:loot Temp[0].id run function teplus:villagers/generate_trades/add_trade

# Clear storages
data remove storage teplus:villagers Result
data remove storage teplus:villagers Copy
data remove storage teplus:villagers Build
data remove storage teplus:villagers Trades
data remove storage teplus:loot Temp
data remove storage teplus:loot Current
data remove storage teplus:temp singlenchobj