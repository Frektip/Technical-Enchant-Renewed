# Animation speed for the particles ONLY when something is enchanted
tp @s[tag=!teplus.speed_enchanted] ~ ~ ~ ~-8 ~
execute if entity @s[tag=teplus.speed_enchanted] run function enchantplus:entity/marker/speed_center

# Exclusive particles  for tier 5
particle enchanted_hit ^1 ^.2 ^ 0 0 0 0.03 5
particle enchanted_hit ^-1 ^.2 ^ 0 0 0 0.03 5

particle enchanted_hit ^1 ^.2 ^1 0 0 0 0.03 5
particle enchanted_hit ^-1 ^.2 ^-1 0 0 0 0.03 5
particle enchanted_hit ^-1 ^.2 ^1 0 0 0 0.03 5
particle enchanted_hit ^1 ^.2 ^-1 0 0 0 0.03 5