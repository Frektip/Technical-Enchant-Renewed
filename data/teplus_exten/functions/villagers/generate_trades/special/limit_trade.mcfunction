#The special trades are always at the very bottom
execute store result score @s tepxv.limit run data get entity @s Offers.Recipes[-1].uses

execute if entity @s[tag=tepxv.isl_cr,scores={tepxv.limit=3..}] run function teplus_exten:villagers/generate_trades/special/end_trade
execute if entity @s[tag=tepxv.bls_orb,scores={tepxv.limit=3..}] run function teplus_exten:villagers/generate_trades/special/end_trade