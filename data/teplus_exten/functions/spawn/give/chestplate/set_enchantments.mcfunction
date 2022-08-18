scoreboard players set $min random 0
scoreboard players set $max random 8
function enchantplus:random_uniform

#Randomly give an enchantment
execute if score #antvn Enchopts matches 0 if score $out random matches 0 unless data storage tepspw:ench {CustomEnchantments:[{id:"AntiVenom"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"AntiVenom",lvl:1}
execute if score #antvn Enchopts matches 0 if score $out random matches 1 unless data storage tepspw:ench {CustomEnchantments:[{id:"AntiVenom"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"AntiVenom",lvl:2}
execute if score #autfd Enchopts matches 0 if score $out random matches 2 unless data storage tepspw:ench {CustomEnchantments:[{id:"AutoFeed"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"AutoFeed",lvl:1}
execute if score #flskn Enchopts matches 0 if score $out random matches 3 unless data storage tepspw:ench {CustomEnchantments:[{id:"FlamingSkin"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"FlamingSkin",lvl:1}

execute if score #lfps Enchopts matches 0 if score $out random matches 4 unless data storage tepspw:ench {CustomEnchantments:[{id:"LifePlus"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"LifePlus",lvl:1}
execute if score #lfps Enchopts matches 0 if score $out random matches 5 unless data storage tepspw:ench {CustomEnchantments:[{id:"LifePlus"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"LifePlus",lvl:2}
execute if score #lfps Enchopts matches 0 if score $out random matches 6 unless data storage tepspw:ench {CustomEnchantments:[{id:"LifePlus"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"LifePlus",lvl:3}
execute if score #lfps Enchopts matches 0 if score $out random matches 7 unless data storage tepspw:ench {CustomEnchantments:[{id:"LifePlus"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"LifePlus",lvl:4}
execute if score #lfps Enchopts matches 0 if score $out random matches 8 unless data storage tepspw:ench {CustomEnchantments:[{id:"LifePlus"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"LifePlus",lvl:5}


execute if predicate enchantplus:random_chance/70 run function teplus_exten:spawn/give/chestplate/set_enchantments