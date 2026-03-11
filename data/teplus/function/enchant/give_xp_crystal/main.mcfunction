# Initialize de Storage
data modify storage teplus:xp_crystal Build set value {}
data modify storage teplus:xp_crystal Build.Tier set value 0
data modify storage teplus:xp_crystal Build.Value set value [0,0]

# Set up the Tier and Max value based on the enchantment rarity
# Different chances based on the tier
execute store result score #teplus.rng_xp teplus.data run random value 0..10

execute if score #teplus.rng_xp teplus.data matches 0..2 run function teplus:enchant/give_xp_crystal/build_tier {tier:1,init_min:70,init_max:200,max:450}
execute if score #teplus.rng_xp teplus.data matches 3..5 run function teplus:enchant/give_xp_crystal/build_tier {tier:2,init_min:80,init_max:210,max:700}
execute if score #teplus.rng_xp teplus.data matches 6..7 run function teplus:enchant/give_xp_crystal/build_tier {tier:3,init_min:90,init_max:220,max:950}
execute if score #teplus.rng_xp teplus.data matches 8..9 run function teplus:enchant/give_xp_crystal/build_tier {tier:4,init_min:100,init_max:230,max:1200}
execute if score #teplus.rng_xp teplus.data matches 10 run function teplus:enchant/give_xp_crystal/build_tier {tier:5,init_min:110,init_max:240,max:1450}

# update the storage based on the tier
execute store result storage teplus:xp_crystal Build.Tier int 1 run scoreboard players get #teplus.xptier teplus.data
execute store result storage teplus:xp_crystal Build.Value[0] int 1 run scoreboard players get #teplus.xpvalue teplus.data
execute store result storage teplus:xp_crystal Build.Value[1] int 1 run scoreboard players get #teplus.xpmax teplus.data

# Spawn the crystal
loot spawn ~ ~ ~ loot teplus:items/xp_crystal

# Clean Storage & Score
data remove storage teplus:xp_crystal Build
scoreboard players reset #teplus.xptier teplus.data
scoreboard players reset #teplus.xpvalue teplus.data
scoreboard players reset #teplus.xpmax teplus.data
scoreboard players reset #teplus.rng_xp teplus.data

# Visuals & Sound effects
particle minecraft:happy_villager ~ ~ ~ 0.3 0.5 0.3 5 50 force
playsound minecraft:entity.player.levelup ambient @a[distance=..7] ~ ~ ~ 1 1.8