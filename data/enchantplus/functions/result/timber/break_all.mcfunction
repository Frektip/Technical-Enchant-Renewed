#Spawn the loot (as the player)
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
#Check if the player used auto-smelt
execute if score #autsml Enchopts matches 0 if score #timbsmlt teplus.data matches 1 as @e[type=item,distance=...1,nbt={Age:0s}] run function enchantplus:result/autosmelt
#Replace the block
setblock ~ ~ ~ air

#Loop to see connected logs, roots and leaves
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~ ~1 ~ if block ~ ~ ~ #enchantplus:timber run function enchantplus:result/timber/break_all
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~ ~-1 ~ if block ~ ~ ~ #enchantplus:timber run function enchantplus:result/timber/break_all
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~1 ~ ~ if block ~ ~ ~ #enchantplus:timber run function enchantplus:result/timber/break_all
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~-1 ~ ~ if block ~ ~ ~ #enchantplus:timber run function enchantplus:result/timber/break_all
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~ ~ ~1 if block ~ ~ ~ #enchantplus:timber run function enchantplus:result/timber/break_all
execute if entity @e[type=area_effect_cloud,distance=..10,tag=TimberMaxRange] positioned ~ ~ ~-1 if block ~ ~ ~ #enchantplus:timber run function enchantplus:result/timber/break_all