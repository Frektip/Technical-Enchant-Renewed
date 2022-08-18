particle block lapis_block ~ ~.8 ~ 0.2 0.1 0.2 2 100 
playsound entity.fishing_bobber.splash ambient @a[distance=..15] ~ ~ ~ 2 2

execute if entity @s[type=#enchantplus:undead] run effect give @s instant_health 1 0 true 
execute if entity @s[type=!#enchantplus:undead] run effect give @s instant_damage 1 0 true 


scoreboard players set .distance tep.rc 200