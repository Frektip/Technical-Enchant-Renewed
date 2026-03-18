scoreboard players set $min teplus.rng 0
scoreboard players set $max teplus.rng 1
function teplus:utils/random/init

execute if score $out teplus.rng matches 0 run function teplus:villagers/generate_trades/special/isolated_core
execute if score $out teplus.rng matches 1 run function teplus:villagers/generate_trades/special/blessed_orb

# Tag to max out the villager
tag @s add teplus.enchanter.trade4
tag @s add teplus.enchanter.trade_special

# Show particles for the max level
function teplus:villagers/advanced_enchanter/max_level