#Auto-Feed
scoreboard players add @s TimerFeed 1 
execute if score @s[nbt={Inventory:[{Slot:102b,tag:{CustomEnchantments:[{id:"AutoFeed",lvl:1}]}}]}] TimerFeed matches 3600 at @s run function enchantplus:result/auto-feed_effect 
execute if score @s[nbt={Inventory:[{Slot:102b,tag:{CustomEnchantments:[{id:"AutoFeed",lvl:2}]}}]}] TimerFeed matches 3300 at @s run function enchantplus:result/auto-feed_effect 
execute if score @s[nbt={Inventory:[{Slot:102b,tag:{CustomEnchantments:[{id:"AutoFeed",lvl:3}]}}]}] TimerFeed matches 3000 at @s run function enchantplus:result/auto-feed_effect 
execute if score @s[nbt={Inventory:[{Slot:102b,tag:{CustomEnchantments:[{id:"AutoFeed",lvl:4}]}}]}] TimerFeed matches 2700 at @s run function enchantplus:result/auto-feed_effect 
execute if score @s[nbt={Inventory:[{Slot:102b,tag:{CustomEnchantments:[{id:"AutoFeed",lvl:5}]}}]}] TimerFeed matches 2400 at @s run function enchantplus:result/auto-feed_effect 
execute if score @s[nbt={Inventory:[{Slot:102b,tag:{CustomEnchantments:[{id:"AutoFeed",lvl:6}]}}]}] TimerFeed matches 2100 at @s run function enchantplus:result/auto-feed_effect 
execute if score @s[nbt={Inventory:[{Slot:102b,tag:{CustomEnchantments:[{id:"AutoFeed",lvl:7}]}}]}] TimerFeed matches 1800 at @s run function enchantplus:result/auto-feed_effect 
execute if score @s[nbt={Inventory:[{Slot:102b,tag:{CustomEnchantments:[{id:"AutoFeed",lvl:8}]}}]}] TimerFeed matches 1500 at @s run function enchantplus:result/auto-feed_effect 
execute if score @s[nbt={Inventory:[{Slot:102b,tag:{CustomEnchantments:[{id:"AutoFeed",lvl:9}]}}]}] TimerFeed matches 1200 at @s run function enchantplus:result/auto-feed_effect 
execute if score @s[nbt={Inventory:[{Slot:102b,tag:{CustomEnchantments:[{id:"AutoFeed",lvl:10}]}}]}] TimerFeed matches 900 at @s run function enchantplus:result/auto-feed_effect 
