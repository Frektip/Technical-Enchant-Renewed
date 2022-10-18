##Prticle for Debug Mode##
particle dust_color_transition 0.671 0.420 1.000 1 0.867 0.788 1.000 ~ ~ ~ 0 0 0 1 15 force @a[tag=teplus.pydbgm]

##Check conditions:
#Generate the "mined" loot as the player and then
execute if block ~ ~ ~ #enchantplus:excavator as @p[distance=..7,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Excavator"}]}}}] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
#Actually break the block
execute if block ~ ~ ~ #enchantplus:excavator run setblock ~ ~ ~ air replace

#Detect autosmelt
execute if score #autsml Enchopts matches 0 if entity @e[tag=teplus.item_smelt,distance=..2] as @e[type=item,distance=...5,nbt={Age:0s}] run function enchantplus:result/autosmelt

tag @e[type=item,tag=!teplus.ench_block,distance=...5,nbt={Age:0s}] add teplus.ench_block

kill @s