#Check if the entity can use bows or crossbows
execute if entity @s[type=#teplus_exten:spawn/can_shoot] run function teplus_exten:spawn/give/offhand/shoot/core
execute unless entity @s[type=#teplus_exten:spawn/can_shoot] run function teplus_exten:spawn/give/offhand/melee/core