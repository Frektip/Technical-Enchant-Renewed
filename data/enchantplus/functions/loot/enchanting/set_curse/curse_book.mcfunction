scoreboard players set $min random 0
scoreboard players set $max random 4
function enchantplus:random_uniform

#Randomly enchant the item based on predicates
execute if score $out random matches 0 unless data entity @s Item.tag.StoredCustomCurse[{id:"Fragile"}] run data modify entity @s Item.tag.StoredCustomCurse append value {id:"Fragile",lvl:1}

execute if score $out random matches 1 unless data entity @s Item.tag.StoredCustomCurse[{id:"Sensitive"}] run data modify entity @s Item.tag.StoredCustomCurse append value {id:"Sensitive",lvl:1}

execute if score $out random matches 2 unless data entity @s Item.tag.StoredCustomCurse[{id:"Slippery"}] run data modify entity @s Item.tag.StoredCustomCurse append value {id:"Slippery",lvl:1}

execute if score $out random matches 3 unless data entity @s Item.tag.StoredCustomCurse[{id:"Fear"}] run data modify entity @s Item.tag.StoredCustomCurse append value {id:"Fear",lvl:1}

execute if score $out random matches 4 unless data entity @s Item.tag.StoredCustomCurse[{id:"Exhaustion"}] run data modify entity @s Item.tag.StoredCustomCurse append value {id:"Exhaustion",lvl:1}
