#To make them spawn with custom enchantments
execute as @e[type=#teplus_exten:mobs/with_custom_ench,tag=!smithed.entity,tag=!tepspw_gen] at @s run function teplus_exten:spawn/set_tag

#Run this function every minute
schedule function teplus_exten:spawn/main 300s