particle sneeze ~ ~.5 ~ 0.2 0.5 0.2 0.02 50

#Apply effects
execute if entity @s[type=#enchantplus:undead,tag=Tri.poi1] run effect give @s wither 3 0
execute unless entity @s[type=#enchantplus:undead] run effect give @s[tag=Tri.poi1] poison 3 0

execute if entity @s[type=#enchantplus:undead,tag=Tri.poi2] run effect give @s wither 3 1
execute unless entity @s[type=#enchantplus:undead] run effect give @s[tag=Tri.poi2] poison 3 1

execute if entity @s[type=#enchantplus:undead,tag=Tri.poi3] run effect give @s wither 3 3
execute unless entity @s[type=#enchantplus:undead] run effect give @s[tag=Tri.poi3] poison 3 3


#Remove tags
tag @s remove Tri.poi1
tag @s remove Tri.poi2
tag @s remove Tri.poi3