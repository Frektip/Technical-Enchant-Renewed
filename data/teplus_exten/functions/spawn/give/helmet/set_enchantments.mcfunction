scoreboard players set $min random 0
scoreboard players set $max random 4
function enchantplus:random_uniform

#Randomly give an enchantment
execute if score #antexp Enchopts matches 0 if score $out random matches 0 unless data storage tepspw:ench {CustomEnchantments:[{id:"AntiExplosion"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"AntiExplosion",lvl:1}
execute if score #brvis Enchopts matches 0 if score $out random matches 1 unless data storage tepspw:ench {CustomEnchantments:[{id:"BrightVision"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"BrightVision",lvl:1}
execute if score #mgnt Enchopts matches 0 if score $out random matches 2 unless data storage tepspw:ench {CustomEnchantments:[{id:"Magnet"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Magnet",lvl:1}
execute if score #tmbrk Enchopts matches 0 if score $out random matches 3 unless data storage tepspw:ench {CustomEnchantments:[{id:"TimeBreaker"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"TimeBreaker",lvl:1}
execute if score #tmbrk Enchopts matches 0 if score $out random matches 4 unless data storage tepspw:ench {CustomEnchantments:[{id:"TimeBreaker"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"TimeBreaker",lvl:2}

execute if predicate enchantplus:random_chance/70 run function teplus_exten:spawn/give/helmet/set_enchantments