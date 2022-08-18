summon area_effect_cloud ~ ~ ~ {Tags:["TimberMaxRange"],Duration:1} 
execute if score #tmbr Enchopts matches 0 run function enchantplus:result/timber/core 
execute if score #autsml Enchopts matches 0 run execute as @e[nbt={Item:{tag:{CustomEnchantments:{TimberAutoSmelt:1}}}}] run function enchantplus:result/autosmelt/change  
execute as @e[type=item,nbt={Item:{tag:{CustomEnchantments:{}}}}] run data remove entity @s Item.tag