data merge entity @s[nbt={Item:{id:"minecraft:diamond"}}] {Item:{id:"minecraft:diamond_ore"}}

data merge entity @s[nbt={Item:{id:"minecraft:emerald"}}] {Item:{id:"minecraft:emerald_ore"}}

data merge entity @s[nbt={Item:{id:"minecraft:coal"}}] {Item:{id:"minecraft:coal_ore"}}

data merge entity @s[nbt={Item:{id:"minecraft:raw_iron"}}] {Item:{id:"minecraft:iron_ore"}}

data merge entity @s[nbt={Item:{id:"minecraft:raw_gold"}}] {Item:{id:"minecraft:gold_ore"}}

data merge entity @s[nbt={Item:{id:"minecraft:quartz"}}] {Item:{id:"minecraft:nether_quartz_ore"}}

execute at @s[nbt={Item:{id:"minecraft:gold_nugget"}}] run summon item ~ ~ ~ {Item:{id:"minecraft:nether_gold_ore",Count:1b}} 
kill @s[nbt={Item:{id:"minecraft:gold_nugget"}}]

execute at @s[nbt={Item:{id:"minecraft:lapis_lazuli"}}] run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_ore",Count:1b}} 
kill @s[nbt={Item:{id:"minecraft:lapis_lazuli"}}]

execute at @s[nbt={Item:{id:"minecraft:redstone"}}] run summon item ~ ~ ~ {Item:{id:"minecraft:redstone_ore",Count:1b}} 
kill @s[nbt={Item:{id:"minecraft:redstone"}}]

execute at @s[nbt={Item:{id:"minecraft:raw_copper"}}] run summon item ~ ~ ~ {Item:{id:"minecraft:copper_ore",Count:1b}} 
kill @s[nbt={Item:{id:"minecraft:raw_copper"}}]

kill @e[type=experience_orb,distance=..2]