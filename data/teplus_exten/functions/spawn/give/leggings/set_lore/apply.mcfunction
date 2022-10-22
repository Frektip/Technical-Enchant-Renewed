#Use the Data Storage for each enchantment and for it's own data storage
execute if data storage teplus:item_lore First[{id:"LastLife"}] run item modify entity @s armor.legs technical_anvil:set_lore/last_life
execute if data storage teplus:item_lore First[{id:"Leaping"}] run item modify entity @s armor.legs technical_anvil:set_lore/leaping
execute if data storage teplus:item_lore First[{id:"Recovery"}] run item modify entity @s armor.legs technical_anvil:set_lore/recovery
execute if data storage teplus:item_lore First[{id:"SwimPlus"}] run item modify entity @s armor.legs technical_anvil:set_lore/swim_plus