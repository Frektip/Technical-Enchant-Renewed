# The special trades are always at the very bottom
execute store result score @s teplus.trade_uses run data get entity @s Offers.Recipes[-1].uses

# Limit the trade uses to 3
execute if score @s teplus.trade_uses matches 3.. run function teplus:villagers/generate_trades/special/block_trade