execute store result score @s tep.horse run data get entity @s Health 

execute if entity @s[nbt={ArmorItem:{tag:{CustomEnchantments:[{id:"Recovery",lvl:1}]}}}] if score @s tep.horse matches 3..10 run effect give @s regeneration 5 1 
execute if entity @s[nbt={ArmorItem:{tag:{CustomEnchantments:[{id:"Recovery",lvl:2}]}}}] if score @s tep.horse matches 3..12 run effect give @s regeneration 3 2 