scoreboard players set $min random 0
scoreboard players set $max random 6
function enchantplus:random_uniform

#Randomly give an enchantment
execute if score #aglt Enchopts matches 0 if score $out random matches 0 unless data storage tepspw:ench {CustomEnchantments:[{id:"Agility"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Agility",lvl:1}
execute if score #aglt Enchopts matches 0 if score $out random matches 1 unless data storage tepspw:ench {CustomEnchantments:[{id:"Agility"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Agility",lvl:2}
execute if score #aglt Enchopts matches 0 if score $out random matches 2 unless data storage tepspw:ench {CustomEnchantments:[{id:"Agility"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Agility",lvl:3}
execute if score #dasher Enchopts matches 0 if score $out random matches 3 unless data storage tepspw:ench {CustomEnchantments:[{id:"Dasher"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Dasher",lvl:1}
execute if score #dasher Enchopts matches 0 if score $out random matches 4 unless data storage tepspw:ench {CustomEnchantments:[{id:"Dasher"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Dasher",lvl:2}
execute if score #lvwk Enchopts matches 0 if score $out random matches 5 unless data storage tepspw:ench {CustomEnchantments:[{id:"LavaWalker"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"LavaWalker",lvl:1}
execute if score #skwk Enchopts matches 0 if score $out random matches 6 unless data storage tepspw:ench {CustomEnchantments:[{id:"SkyWalk"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"SkyWalk",lvl:1}


execute if predicate enchantplus:random_chance/70 run function teplus_exten:spawn/give/boots/set_enchantments