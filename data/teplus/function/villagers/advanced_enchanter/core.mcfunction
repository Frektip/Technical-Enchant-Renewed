# Initiallize for the first time
execute if entity @s[tag=!teplus.enchanter.init] run function teplus:villagers/advanced_enchanter/set_first_trade

# When it levels up
execute if entity @s[tag=!teplus.enchanter.trade1,nbt={VillagerData:{level:2}}] run function teplus:villagers/generate_trades/prepare {trade_level:"teplus.enchanter.trade1",ench_rarity:"teplus.ench_low"}
execute if entity @s[tag=!teplus.enchanter.trade2,nbt={VillagerData:{level:3}}] run function teplus:villagers/generate_trades/prepare {trade_level:"teplus.enchanter.trade2",ench_rarity:"teplus.ench_average"}
