scoreboard players set $min random 0
scoreboard players set $max random 2
function enchantplus:random_uniform

#Randomly give an enchantment
execute if score #sptr Enchopts matches 0 if score $out random matches 0 unless data storage tepspw:ench {CustomEnchantments:[{id:"Splatter"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Splatter",lvl:1}
execute if score #sptr Enchopts matches 0 if score $out random matches 1 unless data storage tepspw:ench {CustomEnchantments:[{id:"Splatter"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Splatter",lvl:2}
execute if score #sptr Enchopts matches 0 if score $out random matches 2 unless data storage tepspw:ench {CustomEnchantments:[{id:"Splatter"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Splatter",lvl:3}