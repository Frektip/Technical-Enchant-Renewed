#Cicle through the storage depending on the $out random value
execute if score $chest.loop teplus.data matches 1.. run data remove storage teplus:chest Temp[0]

#Always remove 1 from loop system scoreboard
scoreboard players remove $chest.loop teplus.data 1

#Stop the loop if it reaches -1 (invalid value)
# At this point the Temp storage should be only one value [0]
execute unless score $chest.loop teplus.data matches ..-1 run function teplus_exten:chests/create_loot/system/random_get