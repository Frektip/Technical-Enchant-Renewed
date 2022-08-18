loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~ ~1 ~ if block ~ ~ ~ #enchantplus:not_leaves run function enchantplus:result/timber/not_leaves
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~ ~-1 ~ if block ~ ~ ~ #enchantplus:not_leaves run function enchantplus:result/timber/not_leaves
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~1 ~ ~ if block ~ ~ ~ #enchantplus:not_leaves run function enchantplus:result/timber/not_leaves
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~-1 ~ ~ if block ~ ~ ~ #enchantplus:not_leaves run function enchantplus:result/timber/not_leaves
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~ ~ ~1 if block ~ ~ ~ #enchantplus:not_leaves run function enchantplus:result/timber/not_leaves
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~ ~ ~-1 if block ~ ~ ~ #enchantplus:not_leaves run function enchantplus:result/timber/not_leaves