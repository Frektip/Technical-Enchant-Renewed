scoreboard players set $min random 0
scoreboard players set $max random 7
function enchantplus:random_uniform

#Randomly give an enchantment
execute if score #rplt Enchopts matches 0 if score $out random matches 0 unless data storage tepspw:ench {CustomEnchantments:[{id:"Replant"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Replant",lvl:1}
execute if score #gndtl Enchopts matches 0 if score $out random matches 1 unless data storage tepspw:ench {CustomEnchantments:[{id:"GrandTilling"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"GrandTilling",lvl:1}
execute if score #hrvpl Enchopts matches 0 if score $out random matches 2 unless data storage tepspw:ench {CustomEnchantments:[{id:"HarvestingPlus"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"HarvestingPlus",lvl:1}
execute if score #sytr Enchopts matches 0 if score $out random matches 3 unless data storage tepspw:ench {CustomEnchantments:[{id:"Scyther"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Scyther",lvl:1}
execute if score #sytr Enchopts matches 0 if score $out random matches 4 unless data storage tepspw:ench {CustomEnchantments:[{id:"Scyther"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Scyther",lvl:2}
execute if score #slrp Enchopts matches 0 if score $out random matches 5 unless data storage tepspw:ench {CustomEnchantments:[{id:"SoulReaper"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"SoulReaper",lvl:1}
execute if score #slrp Enchopts matches 0 if score $out random matches 6 unless data storage tepspw:ench {CustomEnchantments:[{id:"SoulReaper"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"SoulReaper",lvl:2}
execute if score #slrp Enchopts matches 0 if score $out random matches 7 unless data storage tepspw:ench {CustomEnchantments:[{id:"SoulReaper"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"SoulReaper",lvl:3}


execute if predicate enchantplus:random_chance/70 run function teplus_exten:spawn/give/mainhand/melee/set_enchantments/hoe