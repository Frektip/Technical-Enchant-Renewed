#ne peut pas étre utilisez pendant 5 minute car 20 tick x 60 seconde x 5 minute
scoreboard players set @s TimerEnch 6000
tag @s remove ParticleLastLife
tag @s remove lastlife_ready
#effects
execute if entity @s[type=#enchantplus:undead] run effect give @s instant_damage 1 1 true
execute unless entity @s[type=#enchantplus:undead] run effect give @s instant_health 1 1 true
particle damage_indicator ~ ~ ~ 0.5 1 0.5 0.1 10 force
playsound item.totem.use ambient @a[distance=..15] ~ ~ ~ 1
tellraw @s ["",{"translate":"Last Life","color":"#BD3217"},{"translate":" activated, wait 5 minutes to use it again!","color":"#CFAF13"}]