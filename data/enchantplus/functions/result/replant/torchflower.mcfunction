execute align xyz if block ~ ~-1 ~ farmland run setblock ~0.5 ~0.9 ~0.5 minecraft:torchflower_crop 
execute if block ~ ~-1 ~ farmland run kill @s[nbt={Item:{Count:1b}}]