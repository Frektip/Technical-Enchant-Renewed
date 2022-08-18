scoreboard players set $min random 0
scoreboard players set $max random 3
function enchantplus:random_uniform

#Randomly give an enchantment
execute if score #accshot Enchopts matches 0 if score $out random matches 0 unless data storage tepspw:ench {CustomEnchantments:[{id:"AccuracyShot"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"AccuracyShot",lvl:1}
execute if score #frbw Enchopts matches 0 if score $out random matches 1 unless data storage tepspw:ench {CustomEnchantments:[{id:"FireballWave"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"FireballWave",lvl:1}
execute if score #skfg Enchopts matches 0 if score $out random matches 2 unless data storage tepspw:ench {CustomEnchantments:[{id:"ShockFangs"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"ShockFangs",lvl:1}
execute if score #snp Enchopts matches 0 if score $out random matches 3 unless data storage tepspw:ench {CustomEnchantments:[{id:"Sniper"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Sniper",lvl:1}

execute if predicate enchantplus:random_chance/70 run function teplus_exten:spawn/give/mainhand/shoot/set_enchantments/crossbow