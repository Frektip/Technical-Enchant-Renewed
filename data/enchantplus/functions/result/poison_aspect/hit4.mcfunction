particle sneeze ~ ~.5 ~ 0.2 0.5 0.2 0.02 50

execute if entity @s[type=#enchantplus:undead] run effect give @s wither 3 3
execute unless entity @s[type=#enchantplus:undead] run effect give @s poison 3 3

tag @s add poisoned

scoreboard players set .distance tep.rc 70