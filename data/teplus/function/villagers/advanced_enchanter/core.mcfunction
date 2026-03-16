# Initiallize for the first time
execute if entity @s[tag=!teplus.enchanter.init] run function teplus:villagers/advanced_enchanter/set_first_trade

# When it levels up
execute if entity @s[tag=!teplus.enchanter.trade1,nbt={VillagerData:{level:2}}] run function teplus:villagers/generate_trades/level1