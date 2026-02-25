setblock ~ ~ ~ deepslate_tile_slab[type=top]

# Call each function with the correct group of arguments depending on the entity
# Use "teplus:temp place_anvil" storage to pass the arguments using the corresponding path

# Sides
execute summon minecraft:block_display run function teplus:events/placed_block/technical_anvil/place/decorative/leg with storage teplus:temp place_anvil.legs.one
execute summon minecraft:block_display run function teplus:events/placed_block/technical_anvil/place/decorative/leg with storage teplus:temp place_anvil.legs.two

# Center
execute summon minecraft:block_display run function teplus:events/placed_block/technical_anvil/place/decorative/center with storage teplus:temp place_anvil.center.one
execute summon minecraft:block_display run function teplus:events/placed_block/technical_anvil/place/decorative/center with storage teplus:temp place_anvil.center.two

# Chains
execute summon minecraft:block_display run function teplus:events/placed_block/technical_anvil/place/decorative/chains with storage teplus:temp place_anvil.chains.one
execute summon minecraft:block_display run function teplus:events/placed_block/technical_anvil/place/decorative/chains with storage teplus:temp place_anvil.chains.two

# Anvil
execute summon minecraft:item_display run function teplus:events/placed_block/technical_anvil/place/decorative/mini_anvil with storage teplus:temp place_anvil.mini_anvil

# Chest Minecart (set the correct rotation using the argument {rot})
$summon minecraft:area_effect_cloud ~0.499 ~-0.199 ~0.5 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["teplus.aec","teplus.technical_anvil.decorative","teplus.technical_anvil.init"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:1b,Silent:1b,CustomDisplayTile:1b,Invulnerable:1b,DisplayOffset:-1,Tags:["teplus.technical_anvil","teplus.technical_anvil.init"],DisplayState:{Name:"minecraft:smithing_table"},Rotation:[$(rot)f,0f]}]}