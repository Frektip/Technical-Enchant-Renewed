data modify entity @s ArmorItems[3].tag.Enchantments set value [{teplus:blank}] 

particle minecraft:firework ~ ~1.2 ~ 0 0 0 0.1 10
playsound minecraft:entity.ender_eye.death ambient @a ~ ~ ~ 5 1.2
tag @s add teplus.level_mega
tag @e[type=marker,tag=teplus.enchanting_table,tag=ch.full,distance=...5,sort=nearest,limit=1] remove ch.full