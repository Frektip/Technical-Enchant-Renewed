execute at @s[scores={TakeDamage=60..},nbt={Inventory:[{Slot:101b,tag:{CustomEnchantments:[{id:"Recovery",lvl:1}]}}]}] at @s run effect give @s minecraft:regeneration 5 1 true 
execute at @s[scores={TakeDamage=60..},nbt={Inventory:[{Slot:101b,tag:{CustomEnchantments:[{id:"Recovery",lvl:2}]}}]}] at @s run effect give @s minecraft:regeneration 3 2 true 
scoreboard players reset @s[scores={TakeDamage=60..}] TakeDamage 