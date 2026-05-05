execute store result score #drops.out teplus.rng run random value 0..7

execute if score #drops.out teplus.rng matches 0 run attribute @s minecraft:max_health modifier add teplus:drop.max_health 5 add_value
execute if score #drops.out teplus.rng matches 1 run attribute @s minecraft:max_health modifier add teplus:drop.max_health 10 add_value
execute if score #drops.out teplus.rng matches 2 run attribute @s minecraft:max_health modifier add teplus:drop.max_health 15 add_value
execute if score #drops.out teplus.rng matches 3 run attribute @s minecraft:max_health modifier add teplus:drop.max_health 20 add_value
execute if score #drops.out teplus.rng matches 4 run attribute @s minecraft:max_health modifier add teplus:drop.max_health 25 add_value
execute if score #drops.out teplus.rng matches 5 run attribute @s minecraft:max_health modifier add teplus:drop.max_health 30 add_value
execute if score #drops.out teplus.rng matches 6 run attribute @s minecraft:max_health modifier add teplus:drop.max_health 35 add_value
execute if score #drops.out teplus.rng matches 7 run attribute @s minecraft:max_health modifier add teplus:drop.max_health 40 add_value

# Fill the health of the mobs
execute if entity @s[type=#minecraft:undead] run effect give @s instant_damage 5 5
execute if entity @s[type=!#minecraft:undead] run effect give @s instant_health 5 5