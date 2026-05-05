# Initiallize for the first time
execute if entity @s[tag=!teplus.enchanter.init] run function teplus:villagers/advanced_enchanter/set_first_trade

# When it levels up
execute if entity @s[tag=!teplus.enchanter.trade1,nbt={VillagerData:{level:2}}] run function teplus:villagers/generate_trades/prepare {trade_level:"teplus.enchanter.trade1",ench_rarity:"teplus.ench_low",trade_curse:0}
execute if entity @s[tag=!teplus.enchanter.trade2,nbt={VillagerData:{level:3}}] run function teplus:villagers/generate_trades/prepare {trade_level:"teplus.enchanter.trade2",ench_rarity:"teplus.ench_average",trade_curse:0}
execute if entity @s[tag=!teplus.enchanter.trade3,nbt={VillagerData:{level:4}}] run function teplus:villagers/generate_trades/prepare {trade_level:"teplus.enchanter.trade3",ench_rarity:"teplus.ench_strong",trade_curse:1}

# Special trade at final level!
execute if entity @s[tag=!teplus.enchanter.trade4,nbt={VillagerData:{level:5}}] run function teplus:villagers/generate_trades/special/select

# Check if the settings allow to make the last trade renewable
execute if score #vill.renws teplus.game_opts matches 1 if entity @s[tag=teplus.enchanter.trade_special] run function teplus:villagers/generate_trades/special/limit_trade

# In case the villager has a positive Gossip (prevent lowering the price)
execute if score #vill.dsnt teplus.game_opts matches 1 if entity @s[predicate=teplus:villager/can_discount] run function teplus:villagers/advanced_enchanter/no_discount

# In case it loose the job and got reset (hasn't trade for once)
execute if entity @s[tag=teplus.station_match,nbt={VillagerData:{profession:"minecraft:none"}}] run function teplus:villagers/advanced_enchanter/reset