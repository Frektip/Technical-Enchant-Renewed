#Init by random chance
execute if entity @e[distance=0.5..5] if entity @s[tag=!tibr.canuse] if predicate teplus_exten:mobs/random3 run tag @s add tibr.canuse

execute if entity @s[tag=tibr.canuse] run function teplus_exten:mobs/has_ench/armor/time_breaker/init