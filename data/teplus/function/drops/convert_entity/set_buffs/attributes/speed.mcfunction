execute store result score #drops.out teplus.rng run random value 0..2

execute if score #drops.out teplus.rng matches 0 run attribute @s minecraft:movement_speed modifier add teplus:drop.speed 0.33 add_multiplied_base
execute if score #drops.out teplus.rng matches 1 run attribute @s minecraft:movement_speed modifier add teplus:drop.speed 0.38 add_multiplied_base
execute if score #drops.out teplus.rng matches 2 run attribute @s minecraft:movement_speed modifier add teplus:drop.speed 0.4 add_multiplied_base