#Spawn the loot (as the player)
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
#Check if the player used auto-smelt
execute if score #autsml Enchopts matches 0 if score #veinsmlt teplus.data matches 1 as @e[type=item,distance=...1,nbt={Age:0s}] run function enchantplus:result/autosmelt
#Replace the block
setblock ~ ~ ~ air
#Function to check ores that drop xp
execute unless score #veinsilk teplus.data matches 1 at @e[type=area_effect_cloud,tag=!teplus.ores_check,tag=VeinMinerMaxRange,limit=1,distance=..10] run function enchantplus:result/vein_miner/xp_ores

#Loop to see connected ores
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~ ~1 ~ if block ~ ~ ~ #enchantplus:veinminer run function enchantplus:result/vein_miner/core
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~ ~-1 ~ if block ~ ~ ~ #enchantplus:veinminer run function enchantplus:result/vein_miner/core
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~1 ~ ~ if block ~ ~ ~ #enchantplus:veinminer run function enchantplus:result/vein_miner/core
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~-1 ~ ~ if block ~ ~ ~ #enchantplus:veinminer run function enchantplus:result/vein_miner/core
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~ ~ ~1 if block ~ ~ ~ #enchantplus:veinminer run function enchantplus:result/vein_miner/core
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~ ~ ~-1 if block ~ ~ ~ #enchantplus:veinminer run function enchantplus:result/vein_miner/core