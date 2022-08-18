advancement revoke @s only enchantplus:turtle_stiffness
#This is just the setup, the main tick function for the player do the rest
execute if score #trsf Enchopts matches 0 if entity @s[tag=!trigger_protection] at @s run function enchantplus:result/turtle_stiffness/summon
