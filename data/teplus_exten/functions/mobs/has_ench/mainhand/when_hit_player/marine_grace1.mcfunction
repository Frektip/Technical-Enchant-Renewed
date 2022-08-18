execute if score #mrgc Enchopts matches 0 if predicate enchantplus:random_chance/25 run particle bubble_pop ~ ~.5 ~ 0.2 0.5 0.2 .2 500 force

execute if score #mrgc Enchopts matches 0 if predicate enchantplus:random_chance/25 run tag @s add ma.graced

advancement revoke @s only teplus_exten:mobs/hit_player/marine_grace/level1/in_water
advancement revoke @s only teplus_exten:mobs/hit_player/marine_grace/level1/while_raining
advancement revoke @s only teplus_exten:mobs/hit_player/marine_grace/level1/while_thundering