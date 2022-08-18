execute align xyz if block ~ ~-1 ~ minecraft:farmland run setblock ~0.5 ~0.9 ~0.5 minecraft:wheat 
execute if block ~ ~-1 ~ minecraft:farmland run kill @s[nbt={Item:{Count:1b}}]