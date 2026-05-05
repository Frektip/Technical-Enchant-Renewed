# Set the max uses to 0, so it won't trade that item ever again
data modify entity @s Offers.Recipes[-1].maxUses set value 0

# Reset scores and remove tags
scoreboard players reset @s teplus.trade_uses
tag @s remove teplus.enchanter.trade_special