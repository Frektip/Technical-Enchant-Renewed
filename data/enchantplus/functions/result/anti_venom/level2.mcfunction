# Clear effects
execute if predicate enchantplus:exclude_venom/poison run effect clear @s minecraft:poison
execute if predicate enchantplus:exclude_venom/wither run effect clear @s minecraft:wither
execute if predicate enchantplus:exclude_venom/weakness run effect clear @s minecraft:weakness

# Only clear Slowness effect when the plawer doesn't have Turtle Master potion
execute if predicate enchantplus:exclude_venom/slowness unless predicate enchantplus:exclude_venom/turtle_master run effect clear @s minecraft:slowness
