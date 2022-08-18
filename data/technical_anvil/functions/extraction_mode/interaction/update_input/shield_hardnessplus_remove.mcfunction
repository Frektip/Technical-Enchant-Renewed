#Check for remaining Hardness+ lvl
execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"AntiKnockback",lvl:1}]}}]} run item modify entity @s container.10 technical_anvil:shield/anti_knockback_only/level1

execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"AntiKnockback",lvl:2}]}}]} run item modify entity @s container.10 technical_anvil:shield/anti_knockback_only/level2


