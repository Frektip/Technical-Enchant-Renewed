data remove storage tepspw:ench CustomEnchantments

scoreboard players set $min random 0
scoreboard players set $max random 4
function enchantplus:random_uniform

#Randomly give an enchantment
execute if score #autsml Enchopts matches 0 if score $out random matches 0 unless data storage tepspw:ench {CustomEnchantments:[{id:"AutoSmelt"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"AutoSmelt",lvl:1}
execute if score #haste Enchopts matches 0 if score $out random matches 1 unless data storage tepspw:ench {CustomEnchantments:[{id:"Haste"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Haste",lvl:1}
execute if score #haste Enchopts matches 0 if score $out random matches 2 unless data storage tepspw:ench {CustomEnchantments:[{id:"Haste"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Haste",lvl:2}
execute if score #exc Enchopts matches 0 if score $out random matches 3 unless data storage tepspw:ench {CustomEnchantments:[{id:"Excavator"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"Excavator",lvl:1}
execute if score #bgpt Enchopts matches 0 if score $out random matches 4 unless data storage tepspw:ench {CustomEnchantments:[{id:"BigPath"}]} run data modify storage tepspw:ench CustomEnchantments append value {id:"BigPath",lvl:1}


execute if predicate enchantplus:random_chance/70 run function teplus_exten:spawn/give/mainhand/melee/set_enchantments/shovel1