# From bottom
execute if entity @s[tag=teplus.light_source.bottom] positioned ~ ~-1 ~ if predicate enchantplus:light/0 at @s unless predicate enchantplus:light/surrounded_0 align xyz run function enchantplus:entity/marker/light/change

# From top
execute if entity @s[tag=teplus.light_source.top] positioned ~ ~1 ~ if predicate enchantplus:light/0 at @s unless predicate enchantplus:light/surrounded_0 align xyz run function enchantplus:entity/marker/light/change

# From west
execute if entity @s[tag=teplus.light_source.west] positioned ~-1 ~ ~ if predicate enchantplus:light/light/0 at @s unless predicate enchantplus:light/surrounded_0 align xyz run function enchantplus:entity/marker/light/change

# From east
execute if entity @s[tag=teplus.light_source.east] positioned ~1 ~ ~ if predicate enchantplus:light/0 at @s unless predicate enchantplus:light/surrounded_0 align xyz run function enchantplus:entity/marker/light/change

# From north
execute if entity @s[tag=teplus.light_source.north] positioned ~ ~ ~-1 if predicate enchantplus:light/0 at @s unless predicate enchantplus:light/surrounded_0 align xyz run function enchantplus:entity/marker/light/change

# From south
execute if entity @s[tag=teplus.light_source.south] positioned ~ ~ ~1 if predicate enchantplus:light/0 at @s unless predicate enchantplus:light/surrounded_0 align xyz run function enchantplus:entity/marker/light/change