playsound entity.zombie_villager.cure ambient @a[distance=..10] ~ ~ ~ 5 1.5
particle flash ~ ~ ~ 0 0 0 0 5

#TimeBreaker I
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{CustomEnchantments:[{id:"TimeBreaker",lvl:1}]}}]}] as @e[distance=0.5..8] at @s run function enchantplus:result/time_breaker/action1

#TimeBreaker II
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{CustomEnchantments:[{id:"TimeBreaker",lvl:2}]}}]}] as @e[distance=0.5..12] at @s run function enchantplus:result/time_breaker/action2


scoreboard players reset @s TimerTimeBreak
scoreboard players reset @s WaitTimeBreak
tag @s remove tibr.active
