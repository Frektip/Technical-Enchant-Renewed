#Initialize de Storage
data modify storage teplus:xp_crystal Set set value {}
data modify storage teplus:xp_crystal Set.Tier set value 0
data modify storage teplus:xp_crystal Set.Value set value [0,0]

execute store result score #teplus.rng_xp teplus.data run random value 0..10


#Set up the Tier and Max value based on the enchantment rarity:

execute if score #teplus.rng_xp teplus.data matches 0..2 run function enchantplus:loot/loot_system/give_xp_crystal/tier1
execute if score #teplus.rng_xp teplus.data matches 3..5 run function enchantplus:loot/loot_system/give_xp_crystal/tier2
execute if score #teplus.rng_xp teplus.data matches 6..7 run function enchantplus:loot/loot_system/give_xp_crystal/tier3
execute if score #teplus.rng_xp teplus.data matches 8..9 run function enchantplus:loot/loot_system/give_xp_crystal/tier4
execute if score #teplus.rng_xp teplus.data matches 10 run function enchantplus:loot/loot_system/give_xp_crystal/tier5


#Copy the values to the storage
execute store result storage teplus:xp_crystal Set.Tier int 1 run scoreboard players get #teplus.xptier teplus.data
execute store result storage teplus:xp_crystal Set.Value[0] int 1 run scoreboard players get #teplus.xpvalue teplus.data
execute store result storage teplus:xp_crystal Set.Value[1] int 1 run scoreboard players get #teplus.xpmax teplus.data


#Spawn the crystal
loot spawn ~ ~ ~ loot enchantplus:xp_crystal

#Clean and details
data remove storage teplus:xp_crystal Set
particle minecraft:happy_villager ~ ~ ~ 0.3 0.5 0.3 5 50 force
playsound minecraft:entity.player.levelup ambient @a[distance=..7] ~ ~ ~ 1 1.8