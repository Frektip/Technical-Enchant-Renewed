summon area_effect_cloud ~ ~ ~ {Tags:["VeinMinerMaxRange"],Duration:1} 
execute if score #vnmr Enchopts matches 0 run function enchantplus:result/vein_miner/core 
execute if score #autsml Enchopts matches 0 run execute as @e[nbt={Item:{tag:{CustomEnchantments:{VeinAutoSmelt:1}}}}] run function enchantplus:result/autosmelt/change 
execute as @e[type=item,nbt={Item:{tag:{CustomEnchantments:{}}}}] run data remove entity @s Item.tag 