#Dasher LOOP
scoreboard players add @s TimerDash 1

#Start Master Timmer
execute if score @s TimerDash matches 100.. run scoreboard players add @s MasterDash 1

#Summon a marker every half second
execute if score @s TimerDash matches 100.. run particle minecraft:scrape ~ ~.5 ~ 0.2 0.5 0.2 1 30 force
execute if score @s TimerDash matches 111.. run function enchantplus:result/dasher/trail


#You can "sprint" while in water or crouching, so we remove those
execute if predicate enchantplus:is_swimming run scoreboard players reset @s TimerDash
execute if predicate enchantplus:is_sneaking run scoreboard players reset @s TimerDash
