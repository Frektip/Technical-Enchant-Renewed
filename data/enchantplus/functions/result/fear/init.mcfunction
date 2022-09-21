#Store Hostile entities within 25 block radious
execute store result score @s teplus.htlct run execute if entity @e[type=#enchantplus:hostile,distance=..25]
execute if entity @e[type=#enchantplus:strong_mob,distance=..25] run scoreboard players add @s teplus.htlct 3
execute if entity @e[type=#enchantplus:boss,distance=..25] run scoreboard players add @s teplus.htlct 6
#Give effects
execute if score @s teplus.htlct matches 1.. run function enchantplus:result/fear/weakness