scoreboard players set $min random 0
scoreboard players set $max random 15
function enchantplus:random_uniform

#Randomly give an enchantment
execute if score #autsml Enchopts matches 0 if score $out random matches 0 unless data storage tepspw:ench {CustomEnchantments:[{id:"AutoSmelt"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"AutoSmelt",lvl:1}
execute if score #chop Enchopts matches 0 if score $out random matches 1 unless data storage tepspw:ench {CustomEnchantments:[{id:"Chopping"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Chopping",lvl:1}
execute if score #haste Enchopts matches 0 if score $out random matches 2 unless data storage tepspw:ench {CustomEnchantments:[{id:"Haste"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Haste",lvl:1}
execute if score #haste Enchopts matches 0 if score $out random matches 3 unless data storage tepspw:ench {CustomEnchantments:[{id:"Haste"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Haste",lvl:2}
execute if score #strk Enchopts matches 0 if score $out random matches 4 unless data storage tepspw:ench {CustomEnchantments:[{id:"Striker"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Striker",lvl:1}
execute if score #strk Enchopts matches 0 if score $out random matches 5 unless data storage tepspw:ench {CustomEnchantments:[{id:"Striker"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Striker",lvl:2}
execute if score #strk Enchopts matches 0 if score $out random matches 6 unless data storage tepspw:ench {CustomEnchantments:[{id:"Striker"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Striker",lvl:3}
execute if score #tmbr Enchopts matches 0 if score $out random matches 7 unless data storage tepspw:ench {CustomEnchantments:[{id:"Timber"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Timber",lvl:1}
execute if score #trms Enchopts matches 0 if score $out random matches 8 unless data storage tepspw:ench {CustomEnchantments:[{id:"Transmission"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Transmission",lvl:1}
execute if score #trms Enchopts matches 0 if score $out random matches 9 unless data storage tepspw:ench {CustomEnchantments:[{id:"Transmission"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Transmission",lvl:2}
execute if score #trms Enchopts matches 0 if score $out random matches 10 unless data storage tepspw:ench {CustomEnchantments:[{id:"Transmission"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Transmission",lvl:3}
execute if score #trms Enchopts matches 0 if score $out random matches 11 unless data storage tepspw:ench {CustomEnchantments:[{id:"Transmission"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Transmission",lvl:4}
execute if score #trms Enchopts matches 0 if score $out random matches 12 unless data storage tepspw:ench {CustomEnchantments:[{id:"Transmission"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Transmission",lvl:5}
execute if score #xpbt Enchopts matches 0 if score $out random matches 13 unless data storage tepspw:ench {CustomEnchantments:[{id:"XpBoost"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"XpBoost",lvl:1}
execute if score #xpbt Enchopts matches 0 if score $out random matches 14 unless data storage tepspw:ench {CustomEnchantments:[{id:"XpBoost"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"XpBoost",lvl:2}
execute if score #xpbt Enchopts matches 0 if score $out random matches 15 unless data storage tepspw:ench {CustomEnchantments:[{id:"XpBoost"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"XpBoost",lvl:3}


execute if predicate enchantplus:random_chance/70 run function teplus_exten:spawn/give/mainhand/melee/set_enchantments/axe