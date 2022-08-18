#Direction
execute if score #exc Enchopts matches 0 run function enchantplus:result/excavator/core 
execute if score #autsml Enchopts matches 0 run execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{CanAutoSmelt:1}}}}] as @e[type=item,distance=..2,nbt={Age:0s}] run function enchantplus:result/autosmelt/change 
data remove entity @s Item.tag