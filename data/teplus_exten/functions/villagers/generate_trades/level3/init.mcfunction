#Add a tag to use it later for the storages
tag @s add is_enchantment
tag @s add ench_strong

data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]

#Level3 Strong enchantments only
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

tag @s remove is_enchantment
tag @s remove ench_strong

#30% chance to generate a custom cursed book
scoreboard players set $min random 0
scoreboard players set $max random 9
function enchantplus:random_uniform

function teplus_exten:villagers/generate_trades/level3/curse



#End
tag @s add tepxv.trade3
tag @s remove is_enchantment
tag @s remove is_curse
tag @s remove at_book
tag @s remove teplus.loot_1ench
tag @s remove ench_strong

scoreboard players reset @s teplus.single
scoreboard players reset @s teplus.tmplvl

#Give final tag to level it up
# 25% chance to continue with a unique special trade
execute if score #vill.slspc tepext.manager matches 0 unless predicate enchantplus:random_chance/25 run tag @s add tepxv.tradend
execute if score #vill.slspc tepext.manager matches 1 run tag @s add tepxv.tradend