execute store result score #drops.out teplus.rng run random value 0..2

execute if score #drops.out teplus.rng matches 0 run attribute @s minecraft:attack_damage modifier add teplus:drop.damage 3 add_value
execute if score #drops.out teplus.rng matches 1 run attribute @s minecraft:attack_damage modifier add teplus:drop.damage 4 add_value
execute if score #drops.out teplus.rng matches 2 run attribute @s minecraft:attack_damage modifier add teplus:drop.damage 5 add_value
