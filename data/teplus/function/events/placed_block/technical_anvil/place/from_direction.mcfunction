setblock ~ ~ ~ deepslate_tile_slab[type=top]

# We call the coorect function based on the arguments:
# {shared}: north_south or west_east
# {dir}: n, s, w or e

# Sides
$execute summon minecraft:block_display run function teplus:events/placed_block/technical_anvil/place/decorative/$(shared)/leg1

$execute summon minecraft:block_display run function teplus:events/placed_block/technical_anvil/place/decorative/$(shared)/leg2

# Center
$execute summon minecraft:block_display run function teplus:events/placed_block/technical_anvil/place/decorative/$(shared)/center1

$execute summon minecraft:block_display run function teplus:events/placed_block/technical_anvil/place/decorative/$(shared)/center2

# Decorative
# Anvil
$execute summon minecraft:item_display run function teplus:events/placed_block/technical_anvil/place/decorative/$(shared)/$(dir)_anvil

# Chains
$execute summon minecraft:block_display run function teplus:events/placed_block/technical_anvil/place/decorative/$(shared)/chain1

$execute summon minecraft:block_display run function teplus:events/placed_block/technical_anvil/place/decorative/$(shared)/chain2


# Chest Minecart (set the correct rotation using the argument {rot})
$summon minecraft:area_effect_cloud ~0.499 ~-0.199 ~0.5 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["teplus.aec","teplus.technical_anvil.decorative","teplus.technical_anvil.init"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:1b,Silent:1b,CustomDisplayTile:1b,Invulnerable:1b,DisplayOffset:-1,Tags:["teplus.technical_anvil","teplus.technical_anvil.init"],DisplayState:{Name:"minecraft:smithing_table"},Rotation:[$(rot)f,0f]}]}