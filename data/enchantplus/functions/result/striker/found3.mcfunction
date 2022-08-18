execute at @s run summon lightning_bolt ~ ~ ~

execute align xyz run summon minecraft:lightning_bolt ^3.5 ^-1 ^3.5 
execute align xyz run summon minecraft:lightning_bolt ^5.5 ^-1 ^5.5 
execute align xyz run summon minecraft:lightning_bolt ^7.5 ^-1 ^7.5 


execute align xyz run summon minecraft:lightning_bolt ^-3.5 ^-1 ^3.5
execute align xyz run summon minecraft:lightning_bolt ^-5.5 ^-1 ^5.5 
execute align xyz run summon minecraft:lightning_bolt ^-7.5 ^-1 ^7.5 


execute align xyz run summon minecraft:lightning_bolt ^ ^-1 ^3.5
execute align xyz run summon minecraft:lightning_bolt ^ ^-1 ^5.5
execute align xyz run summon minecraft:lightning_bolt ^ ^-1 ^7.5 


tag @s add striked

scoreboard players set .distance tep.rc 70