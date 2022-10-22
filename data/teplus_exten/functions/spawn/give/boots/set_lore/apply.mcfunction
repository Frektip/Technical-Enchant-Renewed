#Use the Data Storage for each enchantment and for it's own data storage
execute if data storage teplus:item_lore First[{id:"Agility"}] run item modify entity @s armor.feet technical_anvil:set_lore/agility
execute if data storage teplus:item_lore First[{id:"Dasher"}] run item modify entity @s armor.feet technical_anvil:set_lore/dasher
execute if data storage teplus:item_lore First[{id:"LavaWalker"}] run item modify entity @s armor.feet technical_anvil:set_lore/lava_walker
execute if data storage teplus:item_lore First[{id:"SkyWalk"}] run item modify entity @s armor.feet technical_anvil:set_lore/sky_walk