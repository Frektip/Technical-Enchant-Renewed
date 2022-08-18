#Check for remaining Hardness+ lvl
execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"HardnessPlus",lvl:1}]}}]} run item modify entity @s container.10 technical_anvil:shield/hardness_plus_only/level1

execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"HardnessPlus",lvl:2}]}}]} run item modify entity @s container.10 technical_anvil:shield/hardness_plus_only/level2

execute if data entity @s {Items:[{Slot:10b,tag:{CustomEnchantments:[{id:"HardnessPlus",lvl:3}]}}]} run item modify entity @s container.10 technical_anvil:shield/hardness_plus_only/level3

