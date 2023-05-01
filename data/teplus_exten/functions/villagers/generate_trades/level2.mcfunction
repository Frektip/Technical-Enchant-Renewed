#Add a tag to use it later for the storages
tag @s add is_enchantment
tag @s add ench_average

data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]

#Level2 Average enchantments only
#Get available enchantments
function teplus_exten:villagers/generate_trades/system/available
#Loop through the enchantments
function teplus_exten:villagers/generate_trades/start
execute if data storage teplus:loot Temp[0].id run function teplus_exten:villagers/generate_trades/can_add_trade

#Clear the storages
data remove storage teplus:villagers Result
data remove storage teplus:villagers Copy
data remove storage teplus:villagers Build
data remove storage teplus:villagers Trades
data remove storage teplus:loot Temp
data remove storage teplus:loot Current


#For the second Average trade
#Get available enchantments
function teplus_exten:villagers/generate_trades/system/available
#Loop through the enchantments
function teplus_exten:villagers/generate_trades/start
execute if data storage teplus:loot Temp[0].id run function teplus_exten:villagers/generate_trades/can_add_trade

#Clear the storages
data remove storage teplus:villagers Result
data remove storage teplus:villagers Copy
data remove storage teplus:villagers Build
data remove storage teplus:villagers Trades
data remove storage teplus:loot Temp
data remove storage teplus:loot Current



tag @s add tepxv.trade2
tag @s remove is_enchantment
tag @s remove at_book
tag @s remove teplus.loot_1ench
tag @s remove ench_average

scoreboard players reset @s teplus.single
scoreboard players reset @s teplus.tmplvl
scoreboard players reset @s TCHA.Section1