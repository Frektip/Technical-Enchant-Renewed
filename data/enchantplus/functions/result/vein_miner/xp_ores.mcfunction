#Loop to see connected ores
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~ ~1 ~ if block ~ ~ ~ #enchantplus:xp_ores run function enchantplus:result/miningplus/drop_xp_ores
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~ ~-1 ~ if block ~ ~ ~ #enchantplus:xp_ores run function enchantplus:result/miningplus/drop_xp_ores
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~1 ~ ~ if block ~ ~ ~ #enchantplus:xp_ores run function enchantplus:result/miningplus/drop_xp_ores
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~-1 ~ ~ if block ~ ~ ~ #enchantplus:xp_ores run function enchantplus:result/miningplus/drop_xp_ores
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~ ~ ~1 if block ~ ~ ~ #enchantplus:xp_ores run function enchantplus:result/miningplus/drop_xp_ores
execute if entity @e[type=area_effect_cloud,limit=1,distance=..10,tag=VeinMinerMaxRange] positioned ~ ~ ~-1 if block ~ ~ ~ #enchantplus:xp_ores run function enchantplus:result/miningplus/drop_xp_ores

#Give a tag, so it doesn't repeat again (infinite xp haha)
tag @s add teplus.ores_check