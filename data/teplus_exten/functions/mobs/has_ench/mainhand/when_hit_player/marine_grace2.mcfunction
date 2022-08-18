execute if score #mrgc Enchopts matches 0 if predicate enchantplus:random_chance/50 run particle minecraft:bubble_pop ~ ~.5 ~ 0.2 0.5 0.2 .2 500 force

execute if score #mrgc Enchopts matches 0 if predicate enchantplus:random_chance/50 run tag @s add ma.graced

advancement revoke @s only teplus_exten:mobs/hit_player/marine_grace/level2/in_water
advancement revoke @s only teplus_exten:mobs/hit_player/marine_grace/level2/while_raining
advancement revoke @s only teplus_exten:mobs/hit_player/marine_grace/level2/while_thundering