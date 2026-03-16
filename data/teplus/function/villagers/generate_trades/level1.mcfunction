# Remove default trades (two trades independent of the level)
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]

tag @s add teplus.ench_low

# Get available enchantments based on the tags
function teplus:villagers/generate_trades/system/available

# Loop through the enchantments
function teplus:villagers/generate_trades/start
execute if data storage teplus:loot Temp[0].id run function teplus:villagers/generate_trades/can_add_trade

# Clear the storages
data remove storage teplus:villagers Result
data remove storage teplus:villagers Copy
data remove storage teplus:villagers Build
data remove storage teplus:villagers Trades
data remove storage teplus:loot Temp
data remove storage teplus:loot Current
data remove storage teplus:temp singlenchobj

tag @s add teplus.enchanter.trade1
tag @s remove teplus.ench_low