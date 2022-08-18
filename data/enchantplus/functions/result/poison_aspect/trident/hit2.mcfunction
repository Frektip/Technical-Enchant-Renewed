particle minecraft:sneeze ~ ~.5 ~ 0.2 0.5 0.2 0.02 50

execute if entity @s[type=#enchantplus:undead] run effect give @s minecraft:wither 3 1
execute unless entity @s[type=#enchantplus:undead] run effect give @s minecraft:poison 3 1

tag @s remove Tri.poi2
