#Check first the general Mining+ mechanic
execute if score #mnpl Enchopts matches 0 unless entity @s[nbt={Item:{tag:{CustomEnchantments:{HardBlock:1}}}}] run function enchantplus:result/miningplus/core

#Different for hard blocks (so it isn't instamined while mining+ less durability blocks xd)
execute if score #mnpl Enchopts matches 0 if entity @s[nbt={Item:{tag:{CustomEnchantments:{HardBlock:1}}}}] run function enchantplus:result/miningplus/hard_block/core

#Check for Autosmelt nbt
execute if score #autsml Enchopts matches 0 if entity @s[nbt={Item:{tag:{CustomEnchantments:{CanAutoSmelt:1}}}}] as @e[type=item,distance=..2,nbt={Age:0s}] run function enchantplus:result/autosmelt/change  
execute if score #autsml Enchopts matches 0 if entity @s[nbt={Item:{tag:{CustomEnchantments:{CobbleAutoSmelt:1}}}}] as @e[type=item,distance=..2,nbt={Age:0s}] run function enchantplus:result/miningplus/cobblestone

#Silk touch for stone and deepslate
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{StoneSilk:1}}}}] as @e[type=item,distance=..2,nbt={Age:0s}] run function enchantplus:result/miningplus/silk_stone

#REMOVE THE NBT TAG!!!
data remove entity @s Item.tag