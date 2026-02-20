execute store result score #drops.out teplus.rng run random value 0..6

# Give fire resistance by default
effect give @s fire_resistance 99999 0

# Resistance
execute if score #drops.out teplus.rng matches 0 run effect give @s resistance 99999 0
execute if score #drops.out teplus.rng matches 1 run effect give @s resistance 99999 1

# Regeneration
execute if score #drops.out teplus.rng matches 2 run effect give @s regeneration 99999 0
execute if score #drops.out teplus.rng matches 3 run effect give @s regeneration 99999 1

# Speed
execute if score #drops.out teplus.rng matches 4 run effect give @s speed 99999 0
execute if score #drops.out teplus.rng matches 5 run effect give @s speed 99999 1

# Strength
execute if score #drops.out teplus.rng matches 6 run effect give @s strength 99999 0