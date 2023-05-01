# Set to bottom
execute positioned ~ ~-1 ~ unless predicate enchantplus:light/0 run function enchantplus:entity/marker/light/relocate_source/bottom

# Set to top
execute positioned ~ ~1 ~ unless predicate enchantplus:light/0 run function enchantplus:entity/marker/light/relocate_source/top

# Set to west
execute positioned ~-1 ~ ~ unless predicate enchantplus:light/0 run function enchantplus:entity/marker/light/relocate_source/west

# Set to east
execute positioned ~1 ~ ~ unless predicate enchantplus:light/0 run function enchantplus:entity/marker/light/relocate_source/east

# Set to south
execute positioned ~ ~ ~1 unless predicate enchantplus:light/0 run function enchantplus:entity/marker/light/relocate_source/south

# Set to north
execute positioned ~ ~ ~-1 unless predicate enchantplus:light/0 run function enchantplus:entity/marker/light/relocate_source/north