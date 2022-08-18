data merge entity @s[nbt={Item:{id:"minecraft:diamond"}}] {Item:{id:"minecraft:deepslate_diamond_ore"}}

data merge entity @s[nbt={Item:{id:"minecraft:emerald"}}] {Item:{id:"minecraft:deepslate_emerald_ore"}}

data merge entity @s[nbt={Item:{id:"minecraft:coal"}}] {Item:{id:"minecraft:deepslate_coal_ore"}}

data merge entity @s[nbt={Item:{id:"minecraft:raw_iron"}}] {Item:{id:"minecraft:deepslate_iron_ore"}}

data merge entity @s[nbt={Item:{id:"minecraft:raw_gold"}}] {Item:{id:"minecraft:deepslate_gold_ore"}}

execute at @s[nbt={Item:{id:"minecraft:lapis_lazuli"}}] run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_lapis_ore",Count:1b}} 
kill @s[nbt={Item:{id:"minecraft:lapis_lazuli"}}]

execute at @s[nbt={Item:{id:"minecraft:redstone"}}] run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_redstone_ore",Count:1b}} 
kill @s[nbt={Item:{id:"minecraft:redstone"}}]

execute at @s[nbt={Item:{id:"minecraft:raw_copper"}}] run summon item ~ ~ ~ {Item:{id:"minecraft:deepslate_copper_ore",Count:1b}} 
kill @s[nbt={Item:{id:"minecraft:raw_copper"}}]

kill @e[type=experience_orb]