# Initialize storage
data modify storage teplus:xp_crystal Update set value 0

# Obtain the item current data
$execute store result score @s teplus.player.xp_crystal_use run data get entity @s $(path).components.minecraft:custom_data.teplus.Content.Value[0]
$execute store result score #temp.max teplus.player.xp_crystal_use run data get entity @s $(path).components.minecraft:custom_data.teplus.Content.Value[1]
$execute store result score #temp.tier teplus.player.xp_crystal_use run data get entity @s $(path).components.minecraft:custom_data.teplus.Content.Tier

# Summon an experience orb
execute if score @s teplus.player.xp_crystal_use matches 1.. run summon minecraft:experience_orb ~ ~ ~ {Value:7s}

# Reduce the score by 7 (xp crystal value)
scoreboard players remove @s teplus.player.xp_crystal_use 7

# Prevent getting negative values
execute if score @s teplus.player.xp_crystal_use matches ..-1 run scoreboard players set @s teplus.player.xp_crystal_use 0

# Copy the values to the storage
execute store result storage teplus:xp_crystal Update int 1 run scoreboard players get @s teplus.player.xp_crystal_use

# Update the item in the players correct slot
$execute if score @s teplus.player.xp_crystal_use matches 0.. run item modify entity @s weapon.$(slot) teplus:misc/update_experience_crystal

# Clear Storage & scores
data remove storage teplus:xp_crystal Update
scoreboard players reset #temp.max teplus.player.xp_crystal
scoreboard players reset #temp.tier teplus.player.xp_crystal
scoreboard players reset @s teplus.player.xp_crystal