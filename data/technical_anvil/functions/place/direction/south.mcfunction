setblock ~ ~ ~ deepslate_tile_slab[type=top] 

### Decorative Falling blocks ##

##Sides
#Back
summon falling_block ~0.06 ~-.001 ~0.502 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_deepslate_wall",Properties:{north:"tall",south:"tall",east:"none",west:"none",up:"false"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 
summon falling_block ~0.95 ~-.001 ~0.502 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_deepslate_wall",Properties:{north:"tall",south:"tall",east:"none",west:"none",up:"false"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 

#Front
summon falling_block ~0.05 ~-.0015 ~0.495 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_deepslate_wall",Properties:{north:"tall",south:"tall",east:"none",west:"none",up:"false"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 
summon falling_block ~0.96 ~-.0015 ~0.495 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_deepslate_wall",Properties:{north:"tall",south:"tall",east:"none",west:"none",up:"false"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 

##Middle
#Top slabs
summon falling_block ~0.5 ~-0.205 ~0.501 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_blackstone_brick_slab",Properties:{type:"top"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 
summon falling_block ~0.5 ~-0.205 ~0.496 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_blackstone_brick_slab",Properties:{type:"top"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 

#Bottom slabs
summon falling_block ~0.5 ~-0.005 ~0.5019 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_blackstone_brick_slab",Properties:{type:"top"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 
summon falling_block ~0.5 ~-0.005 ~0.4969 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],BlockState:{Name:"minecraft:polished_blackstone_brick_slab",Properties:{type:"top"}},NoGravity:1b,Time:-2147483648,DropItem:0b} 

# Decorative armor stand
summon armor_stand ~.5 ~.2 ~.8 {Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_init"],DisabledSlots:4144959,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:anvil",Count:1b}],Small:1b,Marker:1b,Pose:{Head:[0f,90f,0f]}} 

# Chest Minecart
summon area_effect_cloud ~0.499 ~-0.07 ~0.5 {WaitTime:-2147483648,Age:-2147483648,Duration:-1,Tags:["teplus.technical_anvil_decorative","teplus.technical_anvil_aec","teplus.technical_anvil_init"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,DisplayOffset:-1,Tags:["teplus.technical_anvil","teplus.technical_anvil_init"],CustomName:'{"text":"Technical Anvil"}',DisplayState:{Name:"minecraft:smithing_table"},Rotation:[180f]}]}

#Check for wrong player head placements
execute as @e[type=area_effect_cloud,tag=teplus.technical_anvil_aec] at @s run function technical_anvil:place/direction/clear