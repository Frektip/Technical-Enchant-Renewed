execute as @e[type=#teplus_exten:mobs/with_custom_ench,predicate=teplus_exten:mobs/has_general] at @s if entity @a[distance=..18] run function teplus_exten:mobs/type
schedule function teplus_exten:mobs/main 1t
