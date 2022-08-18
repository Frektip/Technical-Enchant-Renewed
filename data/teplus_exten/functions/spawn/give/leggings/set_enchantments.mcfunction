scoreboard players set $min random 0
scoreboard players set $max random 6
function enchantplus:random_uniform

#Randomly give an enchantment
execute if score #lstlf Enchopts matches 0 if score $out random matches 0 unless data storage tepspw:ench {CustomEnchantments:[{id:"LastLife"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"LastLife",lvl:1}
execute if score #leap Enchopts matches 0 if score $out random matches 1 unless data storage tepspw:ench {CustomEnchantments:[{id:"Leaping"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Leaping",lvl:1}
execute if score #leap Enchopts matches 0 if score $out random matches 2 unless data storage tepspw:ench {CustomEnchantments:[{id:"Leaping"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Leaping",lvl:2}
execute if score #leap Enchopts matches 0 if score $out random matches 3 unless data storage tepspw:ench {CustomEnchantments:[{id:"Leaping"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Leaping",lvl:3}
execute if score #rcv Enchopts matches 0 if score $out random matches 4 unless data storage tepspw:ench {CustomEnchantments:[{id:"Recovery"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Recovery",lvl:1}
execute if score #rcv Enchopts matches 0 if score $out random matches 5 unless data storage tepspw:ench {CustomEnchantments:[{id:"Recovery"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Recovery",lvl:2}
execute if score #smpl Enchopts matches 0 if score $out random matches 6 unless data storage tepspw:ench {CustomEnchantments:[{id:"SwimPlus"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"SwimPlus",lvl:1}


execute if predicate enchantplus:random_chance/70 run function teplus_exten:spawn/give/leggings/set_enchantments