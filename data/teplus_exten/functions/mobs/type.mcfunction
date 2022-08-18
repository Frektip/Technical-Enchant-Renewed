#General For All
execute if entity @s[predicate=teplus_exten:mobs/hold_mainhand] run function teplus_exten:mobs/has_ench/mainhand/core
execute if entity @s[predicate=teplus_exten:mobs/hold_offhand] run function teplus_exten:mobs/has_ench/offhand/core
execute if entity @s[predicate=teplus_exten:mobs/wear_armor] run function teplus_exten:mobs/has_ench/armor/core
execute if entity @s[predicate=teplus_exten:mobs/wear_sensitive] run function teplus_exten:mobs/has_ench/sensitive

#Only for mobs that can shoot arrows
execute if entity @s[type=#teplus_exten:mobs/can_shoot] run function teplus_exten:mobs/bowcross/core