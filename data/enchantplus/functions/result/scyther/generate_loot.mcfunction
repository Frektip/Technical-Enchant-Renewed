##Prticle for Debug Mode##
particle dust_color_transition 0.671 0.420 1.000 1 0.867 0.788 1.000 ~ ~ ~ 0 0 0 1 15 force @a[tag=teplus.pydbgm]

##Check conditions:
#The rest is managed from "enchantplus:enchantments/selected"
#This function is just in case the player mined the block wihtout silktouch
execute if score #silk teplus.data matches 0 if block ~ ~ ~ #enchantplus:scyther/sculk_xp run setblock ~ ~ ~ air destroy

#Generate loot-as the player who used the hoe
execute as @p[distance=..20,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"Scyther"}]}}}] if block ~ ~ ~ #enchantplus:scyther/hoe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

#Replace the block
execute if block ~ ~ ~ #enchantplus:scyther/hoe_mineable run setblock ~ ~ ~ air replace

kill @s