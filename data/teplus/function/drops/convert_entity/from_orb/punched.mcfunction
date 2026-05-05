advancement revoke @s only teplus:events/punch_with_orb

tag @s add teplus.drop.can
scoreboard players reset .distance teplus.ryc

execute at @s anchored eyes positioned ^ ^ ^ run function teplus:drops/convert_entity/from_orb/get_entity
item modify entity @s weapon.mainhand teplus:reduce_count1

tag @s remove teplus.drop.can