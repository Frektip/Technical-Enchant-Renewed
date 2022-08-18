scoreboard players set $min random 0
scoreboard players set $max random 11
function enchantplus:random_uniform

#Randomly give an enchantment
execute if score #aksp Enchopts matches 0 if score $out random matches 0 unless data storage tepspw:ench {CustomEnchantments:[{id:"AttackSpeed"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"AttackSpeed",lvl:1}
execute if score #aksp Enchopts matches 0 if score $out random matches 1 unless data storage tepspw:ench {CustomEnchantments:[{id:"AttackSpeed"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"AttackSpeed",lvl:2}
execute if score #aksp Enchopts matches 0 if score $out random matches 2 unless data storage tepspw:ench {CustomEnchantments:[{id:"AttackSpeed"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"AttackSpeed",lvl:3}
execute if score #mrgc Enchopts matches 0 if score $out random matches 3 unless data storage tepspw:ench {CustomEnchantments:[{id:"MarineGrace"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"MarineGrace",lvl:1}
execute if score #mrgc Enchopts matches 0 if score $out random matches 4 unless data storage tepspw:ench {CustomEnchantments:[{id:"MarineGrace"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"MarineGrace",lvl:2}
execute if score #pst Enchopts matches 0 if score $out random matches 5 unless data storage tepspw:ench {CustomEnchantments:[{id:"PoisonAspect"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"PoisonAspect",lvl:1}
execute if score #pst Enchopts matches 0 if score $out random matches 6 unless data storage tepspw:ench {CustomEnchantments:[{id:"PoisonAspect"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"PoisonAspect",lvl:2}
execute if score #pst Enchopts matches 0 if score $out random matches 7 unless data storage tepspw:ench {CustomEnchantments:[{id:"PoisonAspect"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"PoisonAspect",lvl:3}
execute if score #wtjt Enchopts matches 0 if score $out random matches 8 unless data storage tepspw:ench {CustomEnchantments:[{id:"Waterjet"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Waterjet",lvl:1}
execute if score #xpbt Enchopts matches 0 if score $out random matches 9 unless data storage tepspw:ench {CustomEnchantments:[{id:"XpBoost"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"XpBoost",lvl:1}
execute if score #xpbt Enchopts matches 0 if score $out random matches 10 unless data storage tepspw:ench {CustomEnchantments:[{id:"XpBoost"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"XpBoost",lvl:2}
execute if score #xpbt Enchopts matches 0 if score $out random matches 11 unless data storage tepspw:ench {CustomEnchantments:[{id:"XpBoost"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"XpBoost",lvl:3}


execute if predicate enchantplus:random_chance/70 run function teplus_exten:spawn/give/mainhand/melee/set_enchantments/trident