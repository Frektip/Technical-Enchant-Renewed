tag @s add teplus.drop.try

# Check for the drop chances %
execute store result score #drops.out teplus.rng run random value 1..100
execute if score #drops.out teplus.rng <= #drop.chance teplus.game_opts run return run function teplus:drops/item_generated/convert_item

kill @s