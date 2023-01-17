particle sneeze ~ ~.5 ~ 0.2 0.5 0.2 0.02 50

execute if entity @s[type=#enchantplus:undead] run effect give @s wither 5 7
execute unless entity @s[type=#enchantplus:undead] run effect give @s poison 5 7

tag @s add poisoned

scoreboard players set .distance tep.rc 70