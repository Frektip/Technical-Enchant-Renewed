execute if predicate enchantplus:is_running run function enchantplus:result/dasher/while_running


execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{CustomEnchantments:[{id:"Dasher",lvl:1}]}}]}] if score @s MasterDash matches 100.. run function enchantplus:result/dasher/end
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{CustomEnchantments:[{id:"Dasher",lvl:2}]}}]}] if score @s MasterDash matches 200.. run function enchantplus:result/dasher/end


execute unless predicate enchantplus:is_running run function enchantplus:result/dasher/end