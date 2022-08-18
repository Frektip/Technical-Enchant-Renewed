loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~ ~1 ~ if block ~ ~ ~ #enchantplus:veinminer run function enchantplus:result/vein_miner/core
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~ ~-1 ~ if block ~ ~ ~ #enchantplus:veinminer run function enchantplus:result/vein_miner/core
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~1 ~ ~ if block ~ ~ ~ #enchantplus:veinminer run function enchantplus:result/vein_miner/core
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~-1 ~ ~ if block ~ ~ ~ #enchantplus:veinminer run function enchantplus:result/vein_miner/core
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~ ~ ~1 if block ~ ~ ~ #enchantplus:veinminer run function enchantplus:result/vein_miner/core
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~ ~ ~-1 if block ~ ~ ~ #enchantplus:veinminer run function enchantplus:result/vein_miner/core