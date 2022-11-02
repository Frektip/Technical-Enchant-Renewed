advancement revoke @s only teplus_exten:drops/punch_with_orb

tag @s add tepdrop.can
scoreboard players reset .distance tep.rc

execute at @s anchored eyes positioned ^ ^ ^ run function teplus_exten:drops/convert/get_entity
item modify entity @s weapon.mainhand technical_anvil:reduce_count1

tag @s remove tepdrop.can