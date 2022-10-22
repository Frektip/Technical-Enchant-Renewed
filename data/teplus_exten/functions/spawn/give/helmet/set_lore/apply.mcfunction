#Use the Data Storage for each enchantment and for it's own data storage
execute if data storage teplus:item_lore First[{id:"AntiExplosion"}] run item modify entity @s armor.head technical_anvil:set_lore/anti_explosion
execute if data storage teplus:item_lore First[{id:"BrightVision"}] run item modify entity @s armor.head technical_anvil:set_lore/bright_vision
execute if data storage teplus:item_lore First[{id:"Magnet"}] run item modify entity @s armor.head technical_anvil:set_lore/magnet
execute if data storage teplus:item_lore First[{id:"TimeBreaker"}] run item modify entity @s armor.head technical_anvil:set_lore/time_breaker