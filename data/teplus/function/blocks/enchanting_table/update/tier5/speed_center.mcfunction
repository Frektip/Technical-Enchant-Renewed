# @Context: this function moves faster the marker, so that the particles in the
#  ground for Tier 5 move accordingly until the "enchant" animation is done
tp @s ~ ~ ~ ~-15 ~

# Inner circle
particle enchanted_hit ^ ^.2 ^-1 0 0 0 0.03 5
particle enchanted_hit ^ ^.2 ^1 0 0 0 0.03 5
particle enchanted_hit ^.75 ^.2 ^.75 0 0 0 0.03 5
particle enchanted_hit ^-.75 ^.2 ^-.75 0 0 0 0.03 5
particle enchanted_hit ^.75 ^.2 ^-.75 0 0 0 0.03 5
particle enchanted_hit ^-.75 ^.2 ^.75 0 0 0 0.03 5

# Outer Circle
particle enchanted_hit ^1 ^.2 ^1 0 0 0 0.03 5
particle enchanted_hit ^-1 ^.2 ^-1 0 0 0 0.03 5
particle enchanted_hit ^-1 ^.2 ^1 0 0 0 0.03 5
particle enchanted_hit ^1 ^.2 ^-1 0 0 0 0.03 5