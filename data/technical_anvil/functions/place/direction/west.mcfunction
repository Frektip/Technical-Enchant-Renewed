setblock ~ ~ ~ deepslate_tile_slab[type=top]

##Sides
execute summon block_display run function technical_anvil:place/decorative/west_east/leg1

execute summon block_display run function technical_anvil:place/decorative/west_east/leg2

#Center
execute summon block_display run function technical_anvil:place/decorative/west_east/center1

execute summon block_display run function technical_anvil:place/decorative/west_east/center2

#Decorative
#Anvil
execute summon item_display run function technical_anvil:place/decorative/west_east/w_anvil

#Chains
execute summon block_display run function technical_anvil:place/decorative/west_east/chain1

execute summon block_display run function technical_anvil:place/decorative/west_east/chain2

# Chest Minecart
summon area_effect_cloud ~0.499 ~-0.199 ~0.5 {WaitTime:-2147483648,Age:-2147483648,Duration:-1,Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_aec","teplus.technical_anvil_init"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,DisplayOffset:-1,Tags:["teplus.technical_anvil","teplus.technical_anvil_init"],CustomName:'{"text":"Technical Anvil"}',DisplayState:{Name:"minecraft:smithing_table"},Rotation:[90f]}]}