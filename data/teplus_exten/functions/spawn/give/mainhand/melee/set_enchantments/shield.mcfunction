scoreboard players set $min random 0
scoreboard players set $max random 6
function enchantplus:random_uniform

#Randomly give an enchantment
execute if score #atkb Enchopts matches 0 if score $out random matches 0 unless data storage tepspw:ench {CustomEnchantments:[{id:"AntiKnockback"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"AntiKnockback",lvl:1}
execute if score #atkb Enchopts matches 0 if score $out random matches 1 unless data storage tepspw:ench {CustomEnchantments:[{id:"AntiKnockback"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"AntiKnockback",lvl:2}
execute if score #hdns Enchopts matches 0 if score $out random matches 2 unless data storage tepspw:ench {CustomEnchantments:[{id:"HardnessPlus"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"HardnessPlus",lvl:1}
execute if score #hdns Enchopts matches 0 if score $out random matches 3 unless data storage tepspw:ench {CustomEnchantments:[{id:"HardnessPlus"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"HardnessPlus",lvl:2}
execute if score #hdns Enchopts matches 0 if score $out random matches 4 unless data storage tepspw:ench {CustomEnchantments:[{id:"HardnessPlus"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"HardnessPlus",lvl:3}
execute if score #pks Enchopts matches 0 if score $out random matches 5 unless data storage tepspw:ench {CustomEnchantments:[{id:"Peaks"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Peaks",lvl:1}
execute if score #trsf Enchopts matches 0 if score $out random matches 6 unless data storage tepspw:ench {CustomEnchantments:[{id:"TurtleStiffness"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"TurtleStiffness",lvl:1}

execute if predicate enchantplus:random_chance/70 run function teplus_exten:spawn/give/mainhand/melee/set_enchantments/shield