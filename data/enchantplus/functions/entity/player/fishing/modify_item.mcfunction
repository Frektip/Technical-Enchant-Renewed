#Insert Water Related Enchantments into the item
scoreboard players set $min random 0
scoreboard players set $max random 9
function enchantplus:random_uniform


execute if score #mrgc Enchopts matches 0 if score $out random matches 0..1 run data modify entity @s Item.tag.StoredCustomEnchantments append value {id:"MarineGrace",lvl:1}

execute if score #mrgc Enchopts matches 0 if score $out random matches 2 run data modify entity @s Item.tag.StoredCustomEnchantments append value {id:"MarineGrace",lvl:2}

execute if score #wtjt Enchopts matches 0 if score $out random matches 3 run data modify entity @s Item.tag.StoredCustomEnchantments append value {id:"Waterjet",lvl:1}

execute if score #sptr Enchopts matches 0 if score $out random matches 4..6 run data modify entity @s Item.tag.StoredCustomEnchantments append value {id:"Splatter",lvl:1}

execute if score #sptr Enchopts matches 0 if score $out random matches 7..8 run data modify entity @s Item.tag.StoredCustomEnchantments append value {id:"Splatter",lvl:2}

execute if score #sptr Enchopts matches 0 if score $out random matches 9 run data modify entity @s Item.tag.StoredCustomEnchantments append value {id:"Splatter",lvl:3}



#Check if the item has Custom Enchantments
execute if data entity @s Item.tag.StoredCustomEnchantments run function enchantplus:entity/player/fishing/success
