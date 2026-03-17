# Remove default trades (two trades independent of the level)
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]

# Add the tag to identify the enchantment rarity
$tag @s add $(ench_rarity)

# Run two times to get two trades
function teplus:villagers/generate_trades/system/init
function teplus:villagers/generate_trades/system/init

# Add the tag to identify the current trade level
$tag @s add $(trade_level)

# Remove the enchantment rarity tag 
$tag @s remove $(ench_rarity)