#Give effect again
execute if entity @s[nbt={ActiveEffects:[{Id:8,Duration:1}]}] run effect give @s[nbt={Inventory:[{Slot:101b,tag:{CustomEnchantments:[{id:"Leaping",lvl:1}]}}]}] jump_boost 5 1 true
execute if entity @s[nbt={ActiveEffects:[{Id:8,Duration:1}]}] run effect give @s[nbt={Inventory:[{Slot:101b,tag:{CustomEnchantments:[{id:"Leaping",lvl:2}]}}]}] jump_boost 5 2 true
execute if entity @s[nbt={ActiveEffects:[{Id:8,Duration:1}]}] run effect give @s[nbt={Inventory:[{Slot:101b,tag:{CustomEnchantments:[{id:"Leaping",lvl:3}]}}]}] jump_boost 5 3 true

#Give effect for the first time
execute unless entity @s[nbt={ActiveEffects:[{Id:8}]}] run effect give @s[nbt={Inventory:[{Slot:101b,tag:{CustomEnchantments:[{id:"Leaping",lvl:1}]}}]}] jump_boost 5 1 true
execute unless entity @s[nbt={ActiveEffects:[{Id:8}]}] run effect give @s[nbt={Inventory:[{Slot:101b,tag:{CustomEnchantments:[{id:"Leaping",lvl:2}]}}]}] jump_boost 5 2 true
execute unless entity @s[nbt={ActiveEffects:[{Id:8}]}] run effect give @s[nbt={Inventory:[{Slot:101b,tag:{CustomEnchantments:[{id:"Leaping",lvl:3}]}}]}] jump_boost 5 3 true

