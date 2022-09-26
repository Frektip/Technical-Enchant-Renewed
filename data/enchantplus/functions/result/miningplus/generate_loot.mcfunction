##Prticle for Debug Mode##
particle dust_color_transition 0.671 0.420 1.000 1 0.867 0.788 1.000 ~ ~ ~ 0 0 0 1 15 force @a[tag=teplus.pydbgm]

##Check conditions:
#Drop xp for ores
execute if block ~ ~ ~ #enchantplus:xp_ores run function enchantplus:result/miningplus/drop_xp_ores

#If the player mined a hard block (therefore, he can break other hard blocks)
execute if score #hardblock teplus.data matches 1 unless block ~ ~ ~ #enchantplus:miningplus as @p[distance=..7,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MiningPlus"}]}}}] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if score #hardblock teplus.data matches 1 unless block ~ ~ ~ #enchantplus:miningplus run setblock ~ ~ ~ air replace

execute if score #hardblock teplus.data matches 0 unless block ~ ~ ~ #enchantplus:miningplus unless block ~ ~ ~ #enchantplus:hard as @p[distance=..7,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"MiningPlus"}]}}}] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if score #hardblock teplus.data matches 0 unless block ~ ~ ~ #enchantplus:miningplus unless block ~ ~ ~ #enchantplus:hard run setblock ~ ~ ~ air replace

#Detect autosmelt
execute if score #autsml Enchopts matches 0 if entity @e[tag=teplus.item_smelt,distance=..2] as @e[type=item,distance=...5,nbt={Age:0s}] run function enchantplus:result/autosmelt

kill @s