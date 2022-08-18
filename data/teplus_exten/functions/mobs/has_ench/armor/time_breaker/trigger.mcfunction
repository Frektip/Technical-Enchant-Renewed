playsound minecraft:entity.zombie_villager.cure ambient @a[distance=..15] ~ ~ ~ 5 1.5
particle minecraft:flash ~ ~ ~ 0 0 0 0 5

#TimeBreaker I
execute if data entity @s ArmorItems[3].tag.CustomEnchantments[{id:"TimeBreaker",lvl:1}] as @e[distance=0.5..8] at @s run function enchantplus:result/time_breaker/action1

#TimeBreaker II
execute if data entity @s ArmorItems[3].tag.CustomEnchantments[{id:"TimeBreaker",lvl:2}] as @e[distance=0.5..12] at @s run function enchantplus:result/time_breaker/action2

scoreboard players reset @s TimerTimeBreak
scoreboard players reset @s WaitTimeBreak
tag @s remove tibr.active
tag @s remove tibr.canuse
