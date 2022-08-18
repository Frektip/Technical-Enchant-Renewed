setblock ~ ~ ~ deepslate_tile_slab[type=top] 

### Decorative Falling blocks ##

##Sides
#Back
summon falling_block ~0.502 ~-.001 ~0.06 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_deepslate_wall",Properties:{north:"none",south:"none",east:"tall",west:"tall",up:"false"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 
summon falling_block ~0.502 ~-.001 ~0.95 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_deepslate_wall",Properties:{north:"none",south:"none",east:"tall",west:"tall",up:"false"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 

#Front
summon falling_block ~0.495 ~-.0015 ~0.05 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_deepslate_wall",Properties:{north:"none",south:"none",east:"tall",west:"tall",up:"false"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 
summon falling_block ~0.495 ~-.0015 ~0.96 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_deepslate_wall",Properties:{north:"none",south:"none",east:"tall",west:"tall",up:"false"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 

##Middle
#Top slabs
summon falling_block ~0.501 ~-0.205 ~0.5 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_blackstone_brick_slab",Properties:{type:"top"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 
summon falling_block ~0.496 ~-0.205 ~0.5 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_blackstone_brick_slab",Properties:{type:"top"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 

#Bottom slabs
summon falling_block ~0.5019 ~-0.005 ~0.5 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_blackstone_brick_slab",Properties:{type:"top"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 
summon falling_block ~0.4969 ~-0.005 ~0.5 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_blackstone_brick_slab",Properties:{type:"top"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 

# Decorative armor stand
summon armor_stand ~.8 ~.2 ~.5 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],DisabledSlots:4144959,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:anvil",Count:1b}],Small:1b,Marker:1b} 

# Chest Minecart
summon area_effect_cloud ~0.499 ~-0.07 ~0.5 {WaitTime:-2147483648,Age:-2147483648,Duration:-1,Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_aec","teplus.technical_anvil_init"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,DisplayOffset:-1,Tags:["teplus.technical_anvil","teplus.technical_anvil_init"],CustomName:'{"text":"Technical Anvil"}',DisplayState:{Name:"minecraft:smithing_table"},Rotation:[90f]}]}

#Check for wrong player head placements
execute as @e[type=area_effect_cloud,tag=teplus.technical_anvil_aec] at @s run function technical_anvil:place/direction/clear