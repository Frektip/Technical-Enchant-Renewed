# Hover animation with a delay (when it has teplus.init_stand tag)
scoreboard players add @s[tag=teplus.init_stand] teplus.hover 1
tp @s[tag=teplus.init_stand,scores={teplus.hover=..20}] ~ ~.005 ~
tp @s[tag=teplus.init_stand,scores={teplus.hover=21..40}] ~ ~-.005 ~
scoreboard players reset @s[scores={teplus.hover=41..}] teplus.hover