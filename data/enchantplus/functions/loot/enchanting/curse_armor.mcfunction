scoreboard players set $min random 0
scoreboard players set $max random 1
function enchantplus:random_uniform

#Randomly enchant the item based on predicates
execute if score $out random matches 0 unless entity @s[nbt={Item:{tag:{CustomCurse:{Fragile:1}}}}] run data modify entity @s Item.tag.CustomCurse.Fragile set value 1

execute if score $out random matches 1 unless entity @s[nbt={Item:{tag:{CustomCurse:{Sensitive:1}}}}] run data modify entity @s Item.tag.CustomCurse.Sensitive set value 1

#In case it doesn't has Enchantment glint (for whatever reason) add it
execute unless data entity @s Item.tag.Enchantments run data modify entity @s Item.tag.Enchantments set value [{}]