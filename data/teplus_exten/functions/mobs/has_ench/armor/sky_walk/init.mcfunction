
execute if score @s[tag=!tepxm.skres] tepxm.skywalk matches 100.. run function teplus_exten:mobs/has_ench/armor/sky_walk/cooldown

execute if entity @s[tag=!tepxm.skres] if block ~ ~-0.5 ~ #enchantplus:not_solid if block ~ ~-4 ~ #enchantplus:not_solid run function teplus_exten:mobs/has_ench/armor/sky_walk/trigger

execute if entity @s[tag=tepxm.skres] run function teplus_exten:mobs/has_ench/armor/sky_walk/descend