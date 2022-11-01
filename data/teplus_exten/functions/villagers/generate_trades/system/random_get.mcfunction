#Cicle through the storage depending on the $out random value
execute if score $trade.loop teplus.data matches 1.. run data remove storage teplus:loot Temp[0]

#Always remove 1 from loop system scoreboard
scoreboard players remove $trade.loop teplus.data 1

#Stop the loop if it reaches -1 (invalid value)
# At this point the Temp storage should be only one value [0]
execute unless score $trade.loop teplus.data matches ..-1 run function teplus_exten:villagers/generate_trades/system/random_get