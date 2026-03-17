# @Context: The villagers levels up, we need to update the trades of the current level
# We set the trades based on the following @params:
# - {trade_level}: the tag to identify the current trade level of the villager
# - {ench_rarity}: the tag to identify the enchantment rarity of both new trades (low, average or strong)
# - {trade_curse}: whether the second trade of the current level can be a curse or not (0 or 1)

# Remove default trades (two trades independent of the level)
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]

# Add the tag to identify the enchantment rarity
$tag @s add $(ench_rarity)

#----Generate two trades----#
# First trade is always the one according to the enchantment rarity
function teplus:villagers/generate_trades/system/init

# Second trade depends on the {trade_curse} parameter
$scoreboard players set #can_trade_curse teplus.data $(trade_curse)
# If it's true check for a 30% chance to add a curse trade
execute if score #can_trade_curse teplus.data matches 1 if predicate teplus:random_chance/30 run function teplus:villagers/generate_trades/trade_curse

function teplus:villagers/generate_trades/system/init

# Add the tag to identify the current trade level
$tag @s add $(trade_level)

# Remove the enchantment rarity tag 
$tag @s remove $(ench_rarity)