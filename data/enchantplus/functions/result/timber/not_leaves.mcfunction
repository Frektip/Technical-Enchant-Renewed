#Spawn the loot (as the player)
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
#Check if the player used auto-smelt
execute if score #autsml Enchopts matches 0 if score #timbsmlt teplus.data matches 1 as @e[type=item,distance=...1,nbt={Age:0s}] run function enchantplus:result/autosmelt
#Replace the block
setblock ~ ~ ~ air

#Loop to see connected logs and roots
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~ ~1 ~ if block ~ ~ ~ #enchantplus:not_leaves run function enchantplus:result/timber/not_leaves
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~ ~-1 ~ if block ~ ~ ~ #enchantplus:not_leaves run function enchantplus:result/timber/not_leaves
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~1 ~ ~ if block ~ ~ ~ #enchantplus:not_leaves run function enchantplus:result/timber/not_leaves
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~-1 ~ ~ if block ~ ~ ~ #enchantplus:not_leaves run function enchantplus:result/timber/not_leaves
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~ ~ ~1 if block ~ ~ ~ #enchantplus:not_leaves run function enchantplus:result/timber/not_leaves
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~ ~ ~-1 if block ~ ~ ~ #enchantplus:not_leaves run function enchantplus:result/timber/not_leaves