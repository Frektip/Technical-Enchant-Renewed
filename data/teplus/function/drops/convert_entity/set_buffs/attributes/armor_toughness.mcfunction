execute store result score #drops.out teplus.rng run random value 0..3

execute if score #drops.out teplus.rng matches 0 run attribute @s minecraft:armor_toughness modifier add teplus:drop.toughness 2 add_value
execute if score #drops.out teplus.rng matches 1 run attribute @s minecraft:armor_toughness modifier add teplus:drop.toughness 3 add_value
execute if score #drops.out teplus.rng matches 2 run attribute @s minecraft:armor_toughness modifier add teplus:drop.toughness 4 add_value
execute if score #drops.out teplus.rng matches 3 run attribute @s minecraft:armor_toughness modifier add teplus:drop.toughness 5 add_value

